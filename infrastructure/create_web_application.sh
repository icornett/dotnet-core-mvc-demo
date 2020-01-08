#! /bin/bash
NAME=$1
GROUP=$2

az webapp create --name $NAME --resource-group $GROUP