#!/bin/bash

if [ ! -f "variables.sh" ] ;
then
	echo "Can't find variables file variables.sh!"
	exit
fi

if [ "$#" -ne 4 ] ;
then
	echo -e "Usage:\n$0 <name> <namespace> <keyname> <password> > output-filename.yaml"
	exit
fi

oc create secret generic $1 -n $2 --from-literal=$3="$4" -oyaml --dry-run=client