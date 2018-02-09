@echo off
color 0a
cls
@echo off
echo ########################################
echo ## Visualizar info de un perfil WiFi  ##
echo ## almacenado en un PC                ##
echo ## por Marcelo T.M.                   ##
echo ########################################
echo  Selecciona una de las siguientes redes WiFi
netsh wlan show profile
set /p nombreWifi=SSID:
netsh wlan show profile name=%nombreWifi% key=clear
pause