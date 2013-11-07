#!/bin/bash
# Script para instalação de pacotes padrões para meu ambiente de trabalho.

for line in $(cat packages.txt)
    do apt-get install "$line"  -y
done 