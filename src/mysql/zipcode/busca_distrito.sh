#!/bin/bash

clear
echo ""
echo "********************************************************"
echo -n "Introduce tu passwd de root de mysql: "
stty -F $(tty) -echo
read passwd
stty -F$(tty) echo
echo ""
echo ""
host="localhost"
usuario="root"
basedatos="zipcode"

argumentos="--table -h $host -u $usuario -p$passwd -D $basedatos -s -e "
while true
do
	read -p "Digite el nombre del distrito a buscar ( x para terminar): " distrito

	if [ $distrito = 'x' ] 
	then
		exit 0
	fi 2> /dev/null

	campos='SELECT provincias.prnombre AS provincia, cantones.canombre AS canton, d.dinombre AS distrito, d.dicodigo AS codigo_postal '
	tabla=" FROM distritos d "
	joins=" JOIN cantones ON d.dicodcan =  cantones.cacodigo  JOIN provincias ON  d.dicodpro =  provincias.prcodigo "
	filtro=" WHERE dinombre LIKE '%$distrito%';"
	consulta="$campos  $tabla $joins $filtro"
	echo $consulta

	mysql $argumentos "$consulta"
	echo "********************************************************"
	echo ""
	echo "" 
done
