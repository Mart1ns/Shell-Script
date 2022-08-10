 777#!/Bin/bash

diretorio=`pwd`
nome=`whoami`


clear
echo " "
echo " "
echo "	                            .__.__              .___              	"       
echo "	  ____  ____   _____ ______ |__|  | _____     __| _/___________   	"
echo "	_/ ___\/  _ \ /     ||____ \|  |  | \__  \   / __ |/  _ \_  __ \  	"
echo "	\  \__(  <_> )  Y Y  \  |_> >  |  |__/ __ \_/ /_/ (  <_> )  | \/  	"
echo "	 \___  >____/|__|_|  /   __/|__|____(____  /\____ |\____/|__|     	"
echo " 	     \/            \/|__|                \/      \/               	"
echo " "
echo " "



dec=$(zenity --title="Compilador SHELL(by kMZ)" --text "   [1] = Continuar execução \n   [2] = Encerrar execução" --entry --width="380" --height="40") // --> Entradas de dados !

while [ "$dec" -eq 1 ]; 
do

	op=$(zenity --title="Compilador SHELL(by kMZ)" --text "   1 = Compilar um novo arquivo.c \n   2 = Executar o programa anterior" --entry --width="380" --height="40") // --> Entradas de dados !
		
	
	if [ "$op" -eq  1 ]; // --> Comparar o valor de entrada !
	then
	
		zenity --info --title="Compilador SHELL(by kMZ)" --text="Seu diretório atual: $diretorio\nUsuário atual: $nome" --window-icon="warning" --width="380" --height="40"

		nome_do_programa=$(zenity --file-selection --title="Escolha o arquivo para compilar" --file-filter="*.c") 
		nome_do_programa_executavel=$(zenity --title="Compilador SHELL(by kMZ)" --text="   Informe o nome do arquivo gerado" --entry) // --> Escolher o arquivo .C
		gcc "$nome_do_programa" -o "$nome_do_programa_executavel"
		./$nome_do_programa_executavel // --> Executar o arquivo gerado !
		clear // --> Limpar o terminal
		//echo " "
		//echo " "
			
	elif [ "$op" -eq  2 ]; // --> Comparar o valor de entrada !
	then
		clear
                ./$nome_do_programa_executavel // --> Executar o arquivo gerado anteriormente  !
                 
        else
       		zenity --info --title="Compilador SHELL(by kMZ)" --text="Tchau!" --window-icon="warning" --width=380 --height=40
       		break
       fi 
done // --> Encerrar o programa !
