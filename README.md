# VAULT
![VAULT](screenshots/banner.png?raw=true "VAULT")

##What is VAULT?
VAULT is a fast command line utility for securely storing and retrieving user account information.

###How do I set this up?
  1. Install Python 3.6 and "pycrypto" package
  2. Download the files in this repository to your computer (ie. ~/GitHub/vault)
  3. Add vault shell script to ~/.bin
  4. Add -->  export PATH=$PATH":$HOME/.bin"  <-- to .bash_profile or .bash_rc file
  5. In vault.py update "path" variable to point at passwords.json

###How do I use this?
After getting setup - type "vault" into a terminal window. This will return the following:
```
-a will add a new account 
-r will remove an existing account 
-u will update information of an existing account 
-g will get information for an existing account 
-l will list information for all accounts 
-h displays this help dialog
```
I've included example account information in passwords.json for playing around with VAULT and seeing how it works. I recommend removing existing entries with -r before adding any new account information.

For example to add and account enter:
![add](screenshots/screenshot2.png?raw=true "add")

For faster access to account info enter "vault accountName".
![get](screenshots/screenshot1.png?raw=true "get")

###Is this safe?
Passwords are encrypted using an AES cipher and 32 character key that's generated on-the-fly. This means the master key hash is not stored anywhere, it's generated from user input upon encrypt/decrypt actions - then forgotten. Anything BUT the correct master password will generate the wrong hash and encrypt/decrypt will throw errors or return gibberish.

For more information on the AES cipher https://en.wikipedia.org/wiki/Advanced_Encryption_Standard

### Author
* **Joe Samela** - *Initial work* - [ForYourBrain.net](http://www.foryourbrain.net)
