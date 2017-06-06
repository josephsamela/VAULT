@echo off

REM To enable lightning fast access in the form  "vault accountName"...
REM
REM 1. Replace path variable below  with path to vault.py
REM 2. move this file to ~/.bin folder
REM 3. add -->   export PATH=$PATH":$HOME/.bin"  <-- to .bash_profile or .bash_rc file 

set dir="C:\Users\JKerman\GitHub\vault\vault.py"

python %dir% %1
