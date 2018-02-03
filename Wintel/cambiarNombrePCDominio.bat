@echo off
color 0a
cls
@echo off
echo ###################################################
echo ## Cambiar el nombre al equipo en un dominio     ##
echo ## por Marcelo T.M.                              ##
echo ###################################################
echo El nombre del equipo actualmente es : %computername%
set /p nombreEquipo=Escribe el nombre del equipo:
echo El nuevo nombre del equipo será "'%nombreEquipo%'"
echo -----------------------------------------------
echo Si no es correcto pulsa Ctrl+C para interrumpir la ejecución del programa
echo Si estás seguro del nombre dale al intro :)
set /p dominio=Escribe el dominio:
set /p usuario=Escribe el usuario del dominio:
pause>nul
powershell.exe "Start-Process powershell -Verb runAs 'Rename-Computer -NewName %nombreEquipo% -DomainCredential %dominio%\%usuario% -Restart'" 

