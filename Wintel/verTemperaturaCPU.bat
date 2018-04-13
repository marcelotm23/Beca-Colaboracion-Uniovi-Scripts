@echo off
color 0a
cls
@echo off
echo ########################################
echo ## Visualizar Temperatura del CPU     ##
echo ## Ejecutar como administrador        ##
echo ## por Marcelo T.M.                   ##
echo ########################################
for /f "skip=1 tokens=2 delims==" %%A in ('wmic /namespace:\\root\wmi PATH MSAcpi_ThermalZoneTemperature get CurrentTemperature /value') do set /a "HunDegCel=(%%~A*10)-27315"
echo %HunDegCel:~0,-2%.%HunDegCel:~-2% §C
pause