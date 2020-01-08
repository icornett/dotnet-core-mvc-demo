#! /bin/bash

AZ_LOCATION=$1
AZ_GROUP_NAME=$2

az group create --location $AZ_LOCATION --name $AZ_GROUP_NAME || {
    echo "Unable to create resource group ${AZ_GROUP_NAME}! Please ensure that the resource group doesn't exist in another Azure location"
    exit 1
}

exit 0