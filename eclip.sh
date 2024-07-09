#!/bin/bash
base64 -d <<< "IyEvYmluL2Jhc2gNCg0KIyBDb2xvciBjb2Rlcw0KZXhwb3J0IFJFRD0nXDAzM1swOzMxbScNCmV4cG9ydCBHUkVFTj0nXDAzM1swOzMybScNCmV4cG9ydCBZRUxMT1c9J1wwMzNbMTszM20nDQpleHBvcnQgTkM9J1wwMzNbMG0nDQoNCiMgRnVuY3Rpb24gdG8gcHJvbXB0IGZvciBpbnB1dA0KcHJvbXB0KCkgew0KICAgIGxvY2FsIG1lc3NhZ2U9IiQxIg0KICAgIHJlYWQgLXAgIiRtZXNzYWdlIiBpbnB1dA0KICAgIGVjaG8gIiRpbnB1dCINCn0NCg0KIyBGdW5jdGlvbiB0byBleGVjdXRlIGEgY29tbWFuZCBhbmQgcHJpbnQgYSBtZXNzYWdlDQpleGVjdXRlX2FuZF9wcm9tcHQoKSB7DQogICAgbG9jYWwgbWVzc2FnZT0iJDEiDQogICAgbG9jYWwgY29tbWFuZD0iJDIiDQogICAgZWNobyAtZSAiJHtZRUxMT1d9JHttZXNzYWdlfSR7TkN9Ig0KICAgIGV2YWwgIiRjb21tYW5kIg0KICAgIGVjaG8gLWUgIiR7R1JFRU59RG9uZS4ke05DfSINCn0NCg0KIyBJbnN0YWxsaW5nIFJ1c3QNCmVjaG8gLWUgIiR7WUVMTE9XfUluc3RhbGxpbmcgUnVzdC4uLiR7TkN9Ig0KZWNobw0KY3VybCAtLXByb3RvICc9aHR0cHMnIC0tdGxzdjEuMiAtc1NmIGh0dHBzOi8vc2gucnVzdHVwLnJzIHwgc2ggLXMgLS0gLXkNCnNvdXJjZSAiJEhPTUUvLmNhcmdvL2VudiINCmVjaG8gLWUgIiR7R1JFRU59UnVzdCBpbnN0YWxsZWQ6ICQocnVzdGMgLS12ZXJzaW9uKSR7TkN9Ig0KZWNobw0KDQojIFJlbW92aW5nIE5vZGUuanMNCmVjaG8gLWUgIiR7WUVMTE9XfVJlbW92aW5nIE5vZGUuanMuLi4ke05DfSINCmVjaG8NCnN1ZG8gYXB0LWdldCByZW1vdmUgLXkgbm9kZWpzDQplY2hvDQoNCiMgSW5zdGFsbGluZyBOVk0gYW5kIE5vZGUuanMgTFRTDQplY2hvIC1lICIke1lFTExPV31JbnN0YWxsaW5nIE5WTSBhbmQgTm9kZS5qcyBMVFMuLi4ke05DfSINCmVjaG8NCmN1cmwgLW8tIGh0dHBzOi8vcmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbS9udm0tc2gvbnZtL3YwLjM5LjMvaW5zdGFsbC5zaCB8IGJhc2gNCmV4cG9ydCBOVk1fRElSPSIkSE9NRS8ubnZtIg0Kc291cmNlICIkTlZNX0RJUi9udm0uc2giDQpudm0gaW5zdGFsbCAtLWx0cw0KbnZtIHVzZSAtLWx0cw0KZWNobyAtZSAiJHtHUkVFTn1Ob2RlLmpzIGluc3RhbGxlZDogJChub2RlIC12KSR7TkN9Ig0KZWNobw0KDQojIENsb25pbmcgcmVwb3NpdG9yeSBhbmQgaW5zdGFsbGluZyBucG0gZGVwZW5kZW5jaWVzDQplY2hvIC1lICIke1lFTExPV31DbG9uaW5nIHJlcG9zaXRvcnkgYW5kIGluc3RhbGxpbmcgbnBtIGRlcGVuZGVuY2llcy4uLiR7TkN9Ig0KZWNobw0KZ2l0IGNsb25lIGh0dHBzOi8vZ2l0aHViLmNvbS9FY2xpcHNlLUxhYm9yYXRvcmllcy1JbmMvdGVzdG5ldC1kZXBvc2l0DQpjZCB0ZXN0bmV0LWRlcG9zaXQNCm5wbSBpbnN0YWxsDQplY2hvDQoNCiMgSW5zdGFsbGluZyBTb2xhbmEgQ0xJDQplY2hvIC1lICIke1lFTExPV31JbnN0YWxsaW5nIFNvbGFuYSBDTEkuLi4ke05DfSINCmVjaG8NCnNoIC1jICIkKGN1cmwgLXNTZkwgaHR0cHM6Ly9yZWxlYXNlLnNvbGFuYS5jb20vc3RhYmxlL2luc3RhbGwpIg0KZXhwb3J0IFBBVEg9IiRIT01FLy5sb2NhbC9zaGFyZS9zb2xhbmEvaW5zdGFsbC9hY3RpdmVfcmVsZWFzZS9iaW46JFBBVEgiDQplY2hvIC1lICIke0dSRUVOfVNvbGFuYSBDTEkgaW5zdGFsbGVkOiAkKHNvbGFuYSAtLXZlcnNpb24pJHtOQ30iDQplY2hvDQoNCiMgR2VuZXJhdGluZyBuZXcgU29sYW5hIGtleXBhaXINCmVjaG8gLWUgIiR7WUVMTE9XfUdlbmVyYXRpbmcgbmV3IFNvbGFuYSBrZXlwYWlyLi4uJHtOQ30iDQplY2hvDQpzb2xhbmEta2V5Z2VuIG5ldyAtbyB+L215LXdhbGxldC5qc29uDQplY2hvIC1lICIke1lFTExPV31TYXZlIHRoZXNlIG1uZW1vbmljIHBocmFzZXMgaW4gYSBzYWZlIHBsYWNlLiBJZiB0aGVyZSBpcyBhbnkgYWlyZHJvcCBpbiB0aGUgZnV0dXJlLCB5b3Ugd2lsbCBiZSBlbGlnaWJsZSBmcm9tIHRoaXMgd2FsbGV0IHNvIHNhdmUgaXQuJHtOQ30iDQplY2hvDQoNCnJlYWQgLXAgIkVudGVyIHlvdXIgbW5lbW9uaWMgcGhyYXNlOiAiIG1uZW1vbmljDQplY2hvDQoNCiMgQ3JlYXRpbmcgc2VjcmV0cy5qc29uDQpjYXQgPDwgRU9GID4gc2VjcmV0cy5qc29uDQp7DQogICJzZWVkUGhyYXNlIjogIiRtbmVtb25pYyINCn0NCkVPRg0KDQojIENyZWF0aW5nIGRlcml2ZS13YWxsZXQuanMNCmNhdCA8PCAnRU9GJyA+IGRlcml2ZS13YWxsZXQuanMNCmNvbnN0IHsgc2VlZFBocmFzZSB9ID0gcmVxdWlyZSgnLi9zZWNyZXRzLmpzb24nKTsNCmNvbnN0IHsgSEROb2RlV2FsbGV0IH0gPSByZXF1aXJlKCdldGhlcnMnKTsNCg0KY29uc3QgbW5lbW9uaWNXYWxsZXQgPSBIRE5vZGVXYWxsZXQuZnJvbVBocmFzZShzZWVkUGhyYXNlKTsNCmNvbnNvbGUubG9nKCk7DQpjb25zb2xlLmxvZygnRVRIRVJFVU0gUFJJVkFURSBLRVk6JywgbW5lbW9uaWNXYWxsZXQucHJpdmF0ZUtleSk7DQpjb25zb2xlLmxvZygpOw0KY29uc29sZS5sb2coJ1NFTkQgU0VQT0xJQSBFVEggVE8gVEhJUyBBRERSRVNTOicsIG1uZW1vbmljV2FsbGV0LmFkZHJlc3MpOw0KRU9GDQoNCiMgQ2hlY2tpbmcgYW5kIGluc3RhbGxpbmcgZXRoZXJzLmpzIGlmIG5vdCBmb3VuZA0KaWYgISBucG0gbGlzdCBldGhlcnMgJj4vZGV2L251bGw7IHRoZW4NCiAgZWNobyAiZXRoZXJzLmpzIG5vdCBmb3VuZC4gSW5zdGFsbGluZy4uLiINCiAgZWNobw0KICBucG0gaW5zdGFsbCBldGhlcnMNCiAgZWNobw0KZmkNCg0Kbm9kZSBkZXJpdmUtd2FsbGV0LmpzDQplY2hvDQoNCiMgQ29uZmlndXJpbmcgU29sYW5hIENMSQ0KZWNobyAtZSAiJHtZRUxMT1d9Q29uZmlndXJpbmcgU29sYW5hIENMSS4uLiR7TkN9Ig0KZWNobw0Kc29sYW5hIGNvbmZpZyBzZXQgLS11cmwgaHR0cHM6Ly90ZXN0bmV0LmRldjIuZWNsaXBzZW5ldHdvcmsueHl6Lw0Kc29sYW5hIGNvbmZpZyBzZXQgLS1rZXlwYWlyIH4vbXktd2FsbGV0Lmpzb24NCmVjaG8gLWUgIiR7R1JFRU59U29sYW5hIEFkZHJlc3M6ICQoc29sYW5hIGFkZHJlc3MpJHtOQ30iDQplY2hvDQoNCiMgUmVtb3ZpbmcgdGhlIHRlc3RuZXQtZGVwb3NpdCBmb2xkZXIgaWYgZXhpc3RzDQppZiBbIC1kICJ0ZXN0bmV0LWRlcG9zaXQiIF07IHRoZW4NCiAgICBleGVjdXRlX2FuZF9wcm9tcHQgIlJlbW92aW5nIHRlc3RuZXQtZGVwb3NpdCBGb2xkZXIuLi4iICJybSAtcmYgdGVzdG5ldC1kZXBvc2l0Ig0KZmkNCg0KIyBSZWFkaW5nIHVzZXIgaW5wdXRzDQpzb2xhbmFfYWRkcmVzcz0kKHByb21wdCAiRW50ZXIgeW91ciBTb2xhbmEgYWRkcmVzczogIikNCmV0aGVyZXVtX3ByaXZhdGVfa2V5PSQocHJvbXB0ICJFbnRlciB5b3VyIEV0aGVyZXVtIFByaXZhdGUgS2V5OiAiKQ0KcmVwZWF0X2NvdW50PSQocHJvbXB0ICJFbnRlciB0aGUgbnVtYmVyIG9mIHRpbWVzIHRvIHJlcGVhdCBUcmFuc2FjdGlvbiAoNC01IHR4IFJlY29tbWVuZGVkKTogIikNCmdhc19saW1pdD0iNDAwMDAwMCINCmVjaG8NCg0KIyBSdW5uaW5nIGJyaWRnZSBzY3JpcHQgbXVsdGlwbGUgdGltZXMNCmZvciAoKGk9MTsgaTw9cmVwZWF0X2NvdW50OyBpKyspKTsgZG8NCiAgICBlY2hvIC1lICIke1lFTExPV31SdW5uaW5nIEJyaWRnZSBTY3JpcHQgKFR4ICRpKS4uLiR7TkN9Ig0KICAgIGVjaG8NCiAgICBub2RlIGRlcG9zaXQuanMgIiRzb2xhbmFfYWRkcmVzcyIgMHgxMWI4ZGI2YmI3N2FkOGNiOWFmMDlkMDg2N2JiNmI5MjQ3N2RkNjhlICIkZ2FzX2xpbWl0IiAiJGV0aGVyZXVtX3ByaXZhdGVfa2V5IiBodHRwczovLzFycGMuaW8vc2Vwb2xpYQ0KICAgIGVjaG8NCiAgICBzbGVlcCAzDQpkb25lDQoNCmVjaG8gLWUgIiR7UkVEfUl0IHdpbGwgdGFrZSA0IG1pbnMsIERvbid0IGRvIGFueXRoaW5nLCBKdXN0IFdhaXQke05DfSINCmVjaG8NCg0Kc2xlZXAgMjQwDQoNCiMgQ3JlYXRpbmcgU29sYW5hIHRva2VuDQpleGVjdXRlX2FuZF9wcm9tcHQgIkNyZWF0aW5nIHRva2VuLi4uIiAic3BsLXRva2VuIGNyZWF0ZS10b2tlbiAtLWVuYWJsZS1tZXRhZGF0YSAtcCBUb2tlbnpRZEJOYkxxUDVWRWhka0FTNkVQRkxDMVBIbkJxQ1hFcFB4dUViIg0KZWNobw0KDQojIFJlYWRpbmcgdG9rZW4gYWRkcmVzcyBhbmQgY3JlYXRpbmcgdG9rZW4gYWNjb3VudA0KdG9rZW5fYWRkcmVzcz0kKHByb21wdCAiRW50ZXIgeW91ciBUb2tlbiBBZGRyZXNzOiAiKQ0KZWNobw0KZXhlY3V0ZV9hbmRfcHJvbXB0ICJDcmVhdGluZyB0b2tlbiBhY2NvdW50Li4uIiAic3BsLXRva2VuIGNyZWF0ZS1hY2NvdW50ICR0b2tlbl9hZGRyZXNzIg0KZWNobw0KDQojIE1pbnRpbmcgdG9rZW5zDQpleGVjdXRlX2FuZF9wcm9tcHQgIk1pbnRpbmcgdG9rZW4uLi4iICJzcGwtdG9rZW4gbWludCAkdG9rZW5fYWRkcmVzcyAxMDAwMCINCmVjaG8NCmV4ZWN1dGVfYW5kX3Byb21wdCAiQ2hlY2tpbmcgdG9rZW4gYWNjb3VudHMuLi4iICJzcGwtdG9rZW4gYWNjb3VudHMiDQplY2hvDQoNCiMgQ2hlY2tpbmcgU29sYW5hIHByb2dyYW0gYWRkcmVzcw0KZXhlY3V0ZV9hbmRfcHJvbXB0ICJDaGVja2luZyBQcm9ncmFtIEFkZHJlc3MuLi4iICJzb2xhbmEgYWRkcmVzcyINCmVjaG8NCmVjaG8gLWUgIiR7WUVMTE9XfVN1Ym1pdCBGZWVkYmFjayBhdCR7TkN9OiBodHRwczovL2RvY3MuZ29vZ2xlLmNvbS9mb3Jtcy9kL2UvMUZBSXBRTFNmSlFDRkJLSHBpeTJIVnc5bFRqQ2o3azBCcU5LblA2RzFjZDBZZEtoYVBMV0QtQUEvdmlld2Zvcm0/cGxpPTEiDQplY2hvDQo=" | tr -d '\r' | bash