# VAULT
![VAULT](screenshots/banner.png?raw=true "VAULT")

##What is VAULT?
VAULT is a fast command line utility for securely storing and retrieving user account information.

###How do I set this up?
  1. Download the files in the repository
  2. Move somewhere easy to access (ie. ~/GitHub/vault)
  3. Add "vault" shell script to ~/.bin
  4. Add -->  export PATH=$PATH":$HOME/.bin"  <-- to ".bash_profile" or ".bash_rc" file
  5. In vault.py update path variable to point at passwords.json

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
For example to add and account enter:
![add](screenshots/screenshot2.png?raw=true "add")

For faster access to account info enter "vault accountName".
![get](screenshots/screenshot1.png?raw=true "get")

###Is this safe?
Passwords are encrypted using an AES cipher and 32 character key that's generated on-the-fly. This means the master key hash is not stored anywhere, it's generated from user input upon encrypt/decrypt actions - then forgotten. Anything BUT the correct master password will generate the wrong hash and encrypt/decrypt will return gibberish.

### Author
* **Joe Samela** - *Initial work* - [ForYourBrain.net](http://www.foryourbrain.net)
