@echo off
color 0a
cls
@echo off
cls 
echo ##########################################
echo ## Sacar licencia del equipo a un       ##
echo ## fichero en la carpeta en la que      ##
echo ## se ejecuta con un nombre dado        ##
echo ## por Marcelo T.M.                     ##
echo ##########################################
echo.
set /p nombreFichero=Escribe el nombre del key que se va a crear: 
REG QUERY "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform" /v BackupProductKeyDefault > %nombreFichero%.txt
echo ----------------------------
echo.
echo Key del PC grabada correctamente :)
pause


