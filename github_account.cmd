@echo off
echo tu cuenta es:
echo usuario:
git config user.name
echo email: 
git config user.email
set /p account=Elige Personal o Educativa o salir (P o E o exit):

if %account%==P goto :personal 
if %account%==E goto :educativa
if %account%==exit goto :final

:educativa
git config --unset credential.helper
git config --global user.name bellothornus2
git config --global user.email divanov@cifpfbmoll.eu
goto :final

:personal
git config --unset credential.helper
git config --global user.name bellothornus
git config --global user.email bellothornus@gmail.com
goto :final

:final
set account=
echo se ha cambiado tu cuenta de Github 