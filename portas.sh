#!/bin/bash 

echo "Lista de porta 80 no netstat"
netstat -an | grep 80
