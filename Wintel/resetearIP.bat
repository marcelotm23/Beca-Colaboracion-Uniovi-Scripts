@echo off
color 0a
cls
@echo off
cls 
echo ######################################
echo ## Resetear IP del equipo           ##
echo ## por Marcelo T.M.                 ##
echo ######################################
echo.
echo Liberando la IP...
echo ------------------
ipconfig /release

echo Solicitando una nueva IP...
echo ---------------------------
ipconfig /renew

pause

