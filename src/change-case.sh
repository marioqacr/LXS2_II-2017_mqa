#!/bin/bash

# Este scrip cambia los archivos de mayusculas a minisculas

for FILE in `find $1`
do
	NEWFILE=$(echo $FILE | tr '[A-Z]' '[a-z]')
	mv $FILE $NEWFILE
done
