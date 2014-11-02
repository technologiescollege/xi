cls
@echo off
echo.
echo 		XiDuino : serveur Xi pour interface Arduino.
echo.
echo D‚marrage du serveur (1 serveur par carte), laissez cette fenˆtre ouverte
echo (Ctrl + C pour quitter le serveur XiDuino)
echo.
echo IMPORTANT
echo ce script doit ˆtre ex‚cut‚ dans le dossier o— se trouve le fichier xiserver.js
echo Vous pouvez par contre en cr‚er un raccourci pour ˆtre ex‚cut‚ depuis le bureau.
echo.
echo Si cette fenˆtre se ferme, c'est qu'il ne s'agit pas du bon port
echo ou bien Firmata n'est pas bien t‚l‚vers‚ dans votre Arduino...
echo.
node xiserver.js ard