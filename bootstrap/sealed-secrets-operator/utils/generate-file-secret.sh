#!/bin/bash

if [ ! -f "variables.sh" ] ;
then
	echo "Can't find variables file variables.sh!"
	exit
fi

if [ "$#" -ne 4 ] ;
then
	echo -e "Usage:\n$0 <name> <namespace> <dataname> <path> > output-filename.yaml"
	exit
fi

if [ ! -f "$4" ] ;
then
	echo "Could not find path to file $4..."
	exit
fi

oc create secret generic $1 -n $2 --from-file=$3=$4 -oyaml --dry-run=client