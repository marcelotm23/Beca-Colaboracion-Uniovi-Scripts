@echo off
color 0a
cls
@echo off
:Menu
cls 
echo ########################################
echo ## Apagar el equipo en un tiempo dado ##
echo ## por Marcelo T.M.                   ##
echo ########################################
echo Selecciona una opcion:
echo.
echo 1. 1h
echo 2. 2h
echo 3. 3h
echo 4. Personalizado
set /p var=
if %var%==1 goto :UnaHora
if %var%==2 goto :DosHoras
if %var%==3 goto :TresHoras
if %var%==4 goto :Personalizado
if %var% GTR 4 echo Error
goto :Menu
:UnaHora
set horas=1
goto :Apagar
:DosHoras
set horas=2
goto :Apagar
:TresHoras
set horas=3
goto :Apagar
:Personalizado
echo Personalizado
echo -------------
set /p horas=Introduce el n? de horas:
goto :Apagar
:Apagar
set /a tiempo= %horas% * 3600
shutdown -s -t %tiempo% -c "Se va a apagar el equipo en %horas% horas"