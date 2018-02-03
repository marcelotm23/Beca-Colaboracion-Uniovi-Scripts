@echo off
color 0a
cls
@echo off
echo ######################################
echo ## Cambiar el nombre al equipo      ##
echo ## por Marcelo T.M.                 ##
echo ######################################
echo El nombre del equipo actualmente es : %computername%
set /p nombreEquipo=Escribe el nombre del equipo:
echo El nuevo nombre del equipo sera "'%nombreEquipo%'"
echo -----------------------------------------------
echo Si no es correcto pulsa Ctrl+C para interrumpir la ejecuci¢n del programa
echo Si est s seguro del nombre dale al intro :)
pause>nul
powershell.exe "Start-Process powershell -Verb runAs 'Rename-Computer %nombreEquipo%' " 
shutdown -r -t 30 -f -c "Se ha cambiado el nombre del equipo, el sistema se reiniciara en 30 segundos"