#!/bin/bash

END=2
for ((i=1;i<=END;i++)); do
    az group create --name velocity$i --location eastus
    az group deployment create --resource-group velocity$i --template-file azuredeploy.json --parameters @azuredeploy.parameters.json
    mkdir -p tags/velocity$i
    az vm list-ip-addresses --resource-group velocity$i --output json | jq -r '.[].virtualMachine.network.publicIpAddresses[].ipAddress' > tags/velocity$i/ips.txt
    ./workshopctl deploy velocity$i settings/kube101.yaml
    ./workshopctl kube velocity$i
   ./workshopctl cards velocity$i settings/kube101.yaml
done
