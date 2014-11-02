cls
@echo off
echo.
echo 		XiDuino serveur Xi pour interface Arduino.
echo.
echo D‚marrage du serveur (1 serveur par carte), laissez cette fenˆtre ouverte
echo (Ctrl + C pour quitter le serveur XiDuino)
echo.
echo IMPORTANT
echo ce script doit ˆtre ex‚cut‚ dans le dossier o— se trouve le fichier xiserver.js
echo Vous pouvez par contre en cr‚er un raccourci pour ˆtre ex‚cut‚ depuis le bureau.
echo.
echo Vous devez juste indiquer le port de communication de la carte Arduino :
echo dans le gestionnaire de p‚riph‚riques, quel port COM lui est attribu‚ ?
echo.
echo Si cette fenˆtre se ferme, c'est qu'il ne s'agit pas du bon port
echo ou bien Firmata n'est pas bien t‚l‚vers‚ dans votre Arduino...
echo.

echo Indiquer le port COM sur lequel est connect‚e votre Arduino (COM1, COM2, ...) : 
rem set /p port=
echo.
.\nodejs\node .\xi\xiserver.js [ard] [http://scratch.mit.edu/projects/editor/] [0] [COM3]