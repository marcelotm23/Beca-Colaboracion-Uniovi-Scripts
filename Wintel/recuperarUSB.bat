
@echo off
color 0a
cls
@echo off
echo ##############################################
echo ## Ver ficheros ocultos de un USB afectado  ##
echo ## por un virus que cree accesos directos.  ##
echo ## por Marcelo T.M.                         ##
echo ##############################################
echo  Selecciona uno de los siguientes dispositivos:
fsutil fsinfo drives
set /p unidad=Indicar la unidad(sin los :):
attrib %unidad%:\*.* -s -h -r /s /d
echo Hecho
pause