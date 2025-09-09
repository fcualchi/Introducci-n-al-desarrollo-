:<< "K"
Crear un script de Bash que reciba números de DNI y ordene a las personas de menor a mayor edad. 
Imprimir por pantalla los documentos ordenados. (la cantidad de números de DNI puede variar)


importante entre mas bajo el DNI es mas grande la persona 
K

#!/bin/bash

solicitar_DNI(){
    local DNI_almacenados=() #asi se inicializa un array que solo sirve dentro de la funcion 
    read -p " Cuantas DNI quiere registrar " numero_de_veces
    for (( i=0 ; i < numero_de_veces ; i++ )); do 
        read -p "Ingre el DNI nro $(($i+1)): " dni
        DNI_almacenados+=("$dni")
    done
    printf "%s\n" "${DNI_almacenados[@]}"
}

DNI_ordenados=($(solicitar_DNI | sort -nr))
for i in "${DNI_ordenados[@]}"; do
    echo $i
done 