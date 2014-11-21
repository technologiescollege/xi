cls
@echo off
echo.
echo 		XiDuino : serveur Xi pour interface Arduino.
echo.
echo D‚marrage du serveur (1 serveur par carte), laissez cette fenˆtre ouverte.
echo.
echo IMPORTANT
echo ce script doit ˆtre ex‚cut‚ dans son dossier d'origine.
echo Vous pouvez par contre en cr‚er un raccourci pour ˆtre ex‚cut‚ depuis le bureau.
echo.
echo Vous devez juste indiquer le port de communication (COM) de la carte Arduino :
echo dans le gestionnaire de p‚riph‚riques, quel port COM lui est attribu‚ ?
echo Et aussi un port d'‚coute libre (valeur entre 0 et 65535).
echo.
echo Si cette fenˆtre se ferme, c'est qu'il ne s'agit pas du bon port COM
echo ou bien que le port d'‚coute n'est pas disponible,
echo ou bien Firmata n'est pas bien t‚l‚vers‚ dans votre Arduino...
echo.

echo Indiquer le port COM sur lequel est connect‚e votre Arduino (COM1, COM2, ...) :
echo.
set /p com=
echo.
echo Pour la carte sur le port %com%, indiquer un port d'‚coute (1234, 1976, ...) : 
echo.
set /p port=
echo.
rem .\nodejs\node .\xi\xiserver.js ard http://scratch.mit.edu/projects/editor/ 0 %port% 1234
.\nodejs\node xiserver.js ard null 0 %com% %port%