#!/bin/bash
# Script para instalação de pacotes padrões para meu ambiente de trabalho.

# Adicionando os repositórios
for line in $(cat repositories.txt)
	do apt-add-repository "$line" -y
done

# Atualizando lista de pacotes
apt-get update

# Instalando os pacotes
for line in $(cat packages.txt)
    do apt-get install "$line"  -y
done 

# Instalar o cordova
npm install -g cordova
npm install -g phonegap

# Instalar módulos Python
pip install django
pip install flask
pip install django-registration
pip install django-south
pip install imperavi
pip install django-imperavi
pip install django-sendfile 

# Instalar ia32-libs	
sudo apt-get install libc6:i386 lsb-core libncurses5:i386 libstdc++6:i386

echo "export JAVA_HOME=/usr/lib/jvm/java-7-oracle/" >> ~/.profile
echo "PATH=\"$PATH:/home/paulo/android-sdk/tools:/home/paulo/android-sdk/platform-tools\"" >> ~/.profile
