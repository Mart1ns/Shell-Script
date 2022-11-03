#/bin/bash
# Usando uma lista com botões de rádio com o Zenity
programa=$(zenity  --list  --text "Instalar navegador" \
    --radiolist \
    --column "Marcar" \
    --column "Opção" \
    TRUE 1 FALSE 2 FALSE 3 \
    );



if [ $programa -eq 1 ]
then
        zenity --info --title="Navegador Selecionado" --text="Chrome" --width="100" --height="100"
        zenity --progress --title="Instalação iniciada" --text="Aguarde" --porcentage=0 

elif [ $programa -eq 2 ]
then
        zenity --info --title="Navegador Selecionado" --text="Firefox" --width="100" --height="100"
        zenity --progress --title="Instalação iniciada" --text="Aguarde" --porcentage=0
        
elif [ $programa -eq 3]
then
        zenity --info --title="Navegador Selecionado" --text="Opera" --width="100" --height="100"
        zenity --progress --title="Instalação iniciada" --text="Aguarde" --porcentage=0
fi