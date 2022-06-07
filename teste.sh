#!/bin/bash
#echo "                          (_) |         | |           "
#echo "  ___ ___  _ __ ___  _ __  _| | __ _  __| | ___  _ __ "
#echo " / __/ _ \| '_ ` _ \| '_ \| | |/ _` |/ _` |/ _ \| '__|"
#echo "| (_| (_) | | | | | | |_) | | | (_| | (_| | (_) | |   "
#echo " \___\___/|_| |_| |_| .__/|_|_|\__,_|\__,_|\___/|_|   "
#echo "                    | |                               "
#echo "                    |_|                               "



echo " "
echo " "
echo "      |*|*************************************|*|"
echo "      |*|*************************************|*|"
echo "      |*|      Compilador Shell (by KMZ)      |*|"
echo "      |*|*************************************|*|"
echo "      |*|*************************************|*|"
echo " "
echo " "
echo "      |*|-> Deseja executar o programa? 1 = Sim || 0 = Não "
read dec_loop
# $dec_loop = '0'
while [ "$dec_loop" == "1" ];
    do
                echo "      |*|->  Usuário ,digite um [1] para compilar o programa anterior "
                echo "      |*|->  Ou digite [2] para compilar um novo programa "
                
                read dec
                if [ "$dec" ==  "2" ];
                    then
                        diretorio=`pwd`
                        # rm -rf `$diretorio -iname "*.exe"`

                        # rm -rf find "$diretorio" -iname "*.exe"
                        echo "      |*|-> Diretorio Atual: $diretorio"
                        echo "      |*|-> Informe o nome do programa que você deseja compilar: "
                        echo "      |*|-> "
                        read nome_do_programa
                        
                        echo "      |*|-> Informe o nome do executável que irá ser gerado: "
                        read nome_do_programa_gerado
                        echo " "
                        echo " "
                        echo " "
                        # $programa_anterior = "$nome_do_programa_gerado"
                        gcc "$nome_do_programa".c -o "$nome_do_programa_gerado"
                        ./"$nome_do_programa_gerado"
                clear

                elif [ "$dec" ==  "1" ];
                    then
                        # pwd >> diretorio.txt
                        find /  -name '*.c'
                        #./"$programa_anterior_gerado"
                fi

                echo " "
                echo "      |*|-> Deseja Continuar a execução do programa? 1 = Sim "
                read dec_loop
                clear
                                                                                                   
                #if [ "$dec_loop" == "1"];
                #    then
                #      $dec_loop=$(($dec_loop+1))
                # fi

done

