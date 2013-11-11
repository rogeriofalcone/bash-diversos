#!/bin/bash
# Script para instalação de pacotes padrões para meu ambiente de trabalho.

# Adicionando os repositórios
for line in $(cat repositories.txt)
	do apt-add-repository "$line" -y
done

# Instalando os pacotes
for line in $(cat packages.txt)
    do apt-get install "$line"  -y
done 