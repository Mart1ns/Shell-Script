 777#!/Bin/bash

diretorio=`pwd`
nome=`whoami`


zenity --info --title="Instalador SHELL(by kMZ)" --text="Seu diretório atual: $diretorio\n Usuário atual: $nome" --window-icon="warning" --width="380" --height="40"
nome_do_arquivo=$(zenity --file-selection --title="Escolha o arquivo para instalar" --file-filter="*.deb") 
// chmod a+x "$nome_do_arquivo".
sudo su dpkg -i "$nome_do_arquivo".deb
