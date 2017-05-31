@echo off

REM   To enable lightning fast access in the form  "vault accountName"...
REM
REM   1. Replace dir variable below with path to vault.py
REM   2. move this file to ~/.bin folder
REM   3. add -->   export PATH=$PATH":$HOME/.bin"  <-- to .bash_profile or .bash_rc file 

set dir=C:\Users\jkerman\GitHub\vault\vault.py

set PATH=%PATH%;C:\Users\jkerman\AppData\Local\Continuum\Anaconda3

python %dir% %1
