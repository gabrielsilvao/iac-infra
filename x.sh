#!/bin/bash

echo -n "id: "
read ID

echo -n "secret: "
read SECRET

echo -n "region: "
read REGION

sed -i "s/id-key/$ID/g" terraform/1-versions.tf
sed -i "s/secret-key/$SECRET/g" terraform/1-versions.tf

vagrant up