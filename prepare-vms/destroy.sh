#!/bin/bash

END=2
for ((i=1;i<=END;i++)); do
    az group delete --name velocity$i -y
done
