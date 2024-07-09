#!/bin/bash

# Define color codes
export RED='\033[0;31m'
export GREEN='\033[0;32m'
export YELLOW='\033[1;33m'
export NC='\033[0m'

# Function to prompt user for input
prompt() {
    local message="$1"
    read -p "$message" input
    echo "$input"
}

# Function to execute a command and display a message
execute_and_prompt() {
    local message="$1"
    local command="$2"
    echo -e "${YELLOW}${message}${NC}"
    eval "$command"
    echo -e "${GREEN}Done.${NC}"
}

# Install Rust
echo -e "${YELLOW}Installing Rust...${NC}"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source "$HOME/.cargo/env"
echo -e "${GREEN}Rust installed: $(rustc --version)${NC}"

# Remove Node.js if installed
echo -e "${YELLOW}Removing Node.js...${NC}"
sudo apt-get remove -y nodejs

# Install NVM and Node.js LTS
echo -e "${YELLOW}Installing NVM and Node.js LTS...${NC}"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
export NVM_DIR="/usr/local/share/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
source ~/.bashrc
nvm install --lts
nvm use --lts
echo -e "${GREEN}Node.js installed: $(node -v)${NC}"

# Clone repository and install npm dependencies
echo -e "${YELLOW}Cloning repository and installing npm dependencies...${NC}"
git clone https://github.com/Eclipse-Laboratories-Inc/testnet-deposit
cd testnet-deposit
npm install

# Install Solana CLI
echo -e "${YELLOW}Installing Solana CLI...${NC}"
sh -c "$(curl -sSfL https://release.solana.com/stable/install)"
export PATH="$HOME/.local/share/solana/install/active_release/bin:$PATH"
echo -e "${GREEN}Solana CLI installed: $(solana --version)${NC}"

# Generate new Solana keypair
echo -e "${YELLOW}Generating new Solana keypair...${NC}"
solana-keygen new -o ~/my-wallet.json
echo -e "${YELLOW}Save these mnemonic phrases in a safe place. If there is any airdrop in the future, you will be eligible from this wallet, so save it.${NC}"

# Prompt for mnemonic phrase
mnemonic=$(prompt "Enter your mnemonic phrase: ")

# Create secrets.json file
cat << EOF > secrets.json
{
  "seedPhrase": "$mnemonic"
}
EOF

# Create derive-wallet.js script
cat << 'EOF' > derive-wallet.js
const { seedPhrase } = require('./secrets.json');
const { HDNodeWallet } = require('ethers');

const mnemonicWallet = HDNodeWallet.fromPhrase(seedPhrase);
console.log();
console.log('ETHEREUM PRIVATE KEY:', mnemonicWallet.privateKey);
console.log();
console.log('​​SEND SEPOLIA ETH TO THIS ADDRESS:', mnemonicWallet.address);
EOF

# Install ethers.js if not already installed
if ! npm list ethers &>/dev/null; then
  echo "ethers.js not found. Installing..."
  npm install ethers
fi

# Run derive-wallet.js script
node derive-wallet.js

# Configure Solana CLI
echo -e "${YELLOW}Configuring Solana CLI...${NC}"
solana config set --url https://testnet.dev2.eclipsenetwork.xyz/
solana config set --keypair ~/my-wallet.json
echo -e "${GREEN}Solana Address: $(solana address)${NC}"

# Remove testnet-deposit folder if it exists
if [ -d "testnet-deposit" ]; then
    execute_and_prompt "Removing testnet-deposit Folder..." "rm -rf testnet-deposit"
fi

# Prompt for additional inputs
solana_address=$(prompt "Enter your Solana address: ")
ethereum_private_key=$(prompt "Enter your Ethereum Private Key: ")
repeat_count=$(prompt "Enter the number of times to repeat the transaction (4-5 tx recommended): ")
gas_limit="4000000"

# Run bridge script multiple times
for ((i=1; i<=repeat_count; i++)); do
    echo -e "${YELLOW}Running Bridge Script (Tx $i)...${NC}"
    node deposit.js "$solana_address" 0x11b8db6bb77ad8cb9af09d0867bb6b92477dd68e "$gas_limit" "$ethereum_private_key" https://1rpc.io/sepolia
    sleep 3
done

echo -e "${RED}It will take 4 mins. Don't do anything, just wait.${NC}"
sleep 240

# Create and configure Solana token
execute_and_prompt "Creating token..." "spl-token create-token --enable-metadata -p TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb"
token_address=$(prompt "Enter your Token Address: ")
execute_and_prompt "Creating token account..." "spl-token create-account $token_address"
execute_and_prompt "Minting token..." "spl-token mint $token_address 10000"
execute_and_prompt "Checking token accounts..." "spl-token accounts"
execute_and_prompt "Checking Program Address..." "solana address"

# Provide feedback link
echo -e "${YELLOW}Submit Feedback at${NC}: https://docs.google.com/forms/d/e/1FAIpQLSfJQCFBKHpiy2HVw9lTjCj7k0BqNKnP6G1cd0YdKhaPLWD-AA/viewform?pli=1"
