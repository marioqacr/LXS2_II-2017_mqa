#!/bin/bash
# Programa para realizar respaldos de documentación

# Ambos comandos son equivalentes
current_pwd=`pwd`
current_pwd=$(pwd)

#read -p "Ingrese ruta a respaldar: " dir
echo "Ingrese ruta a respaldar: "
read dir

#cd /usr/share/doc
echo Reporte: >> /tmp/reporte
date >> /tmp/reporte
echo $dir >> /tmp/reporte

#pwd >> /tmp/reporte
du -sh $dir >> /tmp/reporte

echo Path de ejecucion `pwd`

#cd $current_pwd

exit 0
