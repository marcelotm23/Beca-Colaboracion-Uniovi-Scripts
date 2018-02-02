@echo off
color 0a
cls
@echo off
cls 
echo ##########################################
echo ## Sacar info del equipo a un           ##
echo ## fichero en la carpeta en la que      ##
echo ## se ejecuta con un nombre dado        ##
echo ## por Marcelo T.M. V2.0                ##
echo ##########################################
echo.
set /p nombreFichero=Escribe el nombre del fichero que se va a crear, sin la extension txt:
SYSTEMINFO > %nombreFichero%.txt
echo ############Información detallada################
dxdiag /t %nombreFichero%_infoDetallada.txt
echo ----------------------------
echo.
echo Info del PC grabada correctamente :)
pause


