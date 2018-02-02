@echo off
color 0a
cls
@echo off
cls 
echo ##########################################
echo ## Sacar info de la IP del equipo       ##
echo ## a un fichero en la carpeta en la que ##
echo ## ejecuta un nombre dado               ##
echo ## por Marcelo T.M.                     ##
echo ##########################################
echo.
set /p nombreFichero=Escribe el nombre del fichero que se va a crear, sin la extension txt:
echo Grabando la info de la IP...
echo ----------------------------
ipconfig /all > %nombreFichero%.txt
echo.
echo Info de la IP grabada correctamente :)
pause


