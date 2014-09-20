cls
@echo off
echo XiDuino pour Windows : script d'installation automatique
IF DEFINED PUBLIC (SET UDESKTOP=%userprofile%\Desktop) & (SET USTARTMENU=%AppData%\Microsoft\Windows\Start Menu\Programs) & (SET UDOCS=%userprofile%\Documents) ELSE (SET UDESKTOP=%userprofile%\Bureau) & (SET USTARTMENU=%userprofile%\Menu D‚marrer\Programmes) & (SET UDOCS=%userprofile%\Mes Documents)
echo.

pause

echo 1. creation d'un dossier Xi dans les dossiers personnels de l'utilisateur

mkdir "%userprofile%"\xi

mkdir "%USTARTMENU%"\Xi
pause


echo 2. copie des fichiers necessaires dans le dossier Xi

copy xiduino.bat "%userprofile%"\xi

copy ..\..\xiserver\xiserver.js "%userprofile%"\xi

copy xi.ico "%userprofile%"\xi

copy ..\..\..\clients\scratch\projects\Xi4S_Starter_Project.sb2 "%userprofile%"\xi

copy ..\..\..\documentation\Xi_Install_and_Usage_Guide.pdf "%userprofile%"\xi

pause

echo 3. installation des raccourcis sur le bureau et le menu Demarrer
copy XiDuino.lnk "%UDESKTOP%"
copy XiDuino.lnk "%USTARTMENU%"\Xi
copy Xi_Install_and_Usage_Guide.lnk "%USTARTMENU%"\Xi
copy Xi4S_Starter_Project.lnk "%USTARTMENU%"\Xi
pause

echo 3. installation de NODE.js
set /p VerWin="Sur quelle version de Windows installez-vous ? 32 bits ou 64 bits ? Tapez 32 ou 64 : 
if %VerWin%==32 GOTO Win32
if %VerWin%==64 GOTO Win64
GOTO Erreur

:Erreur
echo Mauvaise declaration de la version de Windows, merci de verifier dans les Proprietes Systeme
echo du panneau de configuration.
GOTO Fin

:Win32
msiexec /i node-v0.10.32-x86.msi ALLUSERS=1 /passive
pause
GOTO Suite

:Win64
msiexec /i node-v0.10.32-x64.msi ALLUSERS=1 /passive
pause
GOTO Suite

:Suite
echo 4. installation des modules supplementaires pour NODE.JS
set PATH=%PATH%;%ProgramFiles%\nodejs\
call npm -g cache clean
call npm install --prefix "%userprofile%"\xi node-gyp

call npm install --prefix "%userprofile%"\xi johnny-five

call npm install --prefix "%userprofile%"\xi websocket
call npm install --prefix "%userprofile%"\xi open


echo !!!! Installation Complete !!!"

GOTO Fin

:Fin
pause


