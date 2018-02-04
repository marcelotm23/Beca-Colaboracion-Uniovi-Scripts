#!/bin/bash
clear
echo "########################################"
echo "## Apagar el equipo en un tiempo dado ##"
echo "## por Marcelo T.M.                   ##"
echo "########################################"
echo "Selecciona una opcion:"
echo "1. 1h"
echo "2. 2h"
echo "3. 3h"
echo "4. Personalizado"
echo "5. Una hora concreta(formato 24h)"
read -n 1 -p "Introduce una opcion: " opcion;
echo -e "\n"
case $opcion in
1|2|3) sudo shutdown -h +`expr $opcion '*' 60` "Se va a apagar el equipo en " $opcion " horas";;
4) 	read -n 1 -p "Introduce el tiempo en horas deseado:" horas;
	echo -e "\n"
	sudo shutdown -h +`expr $horas '*' 60` "Se va a apagar el equipo en " $horas " horas";;
5) 	read -p "Introduce la hora en formato 24h deseada:" horaConcreta;
	echo -e "\n"
	sudo shutdown -h $horaConcreta "Se va a apagar el equipo a las " $horaConcreta " horas";;
*) echo "No has introducido una de las opciones" ;;
esac