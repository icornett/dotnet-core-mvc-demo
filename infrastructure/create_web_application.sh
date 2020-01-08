#! /bin/bash
NAME=$1
GROUP=$2

az appservice plan create --resource-group $GROUP --name $NAME --sku FREE

az webapp create --name $NAME --resource-group $GROUP --plan $NAME