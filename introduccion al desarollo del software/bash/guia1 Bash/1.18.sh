:<< "h"
Crear un script de Bash que reciba como parámetros dos strings 
“contraseña” y “contraseña ingresada” e indique si la clave ingresada 
es correcta o incorrecta.
h
#/bin/bash
comporbador_contraseña() {
    password=$1
    pass_valida=0
    read -p "Ingrese la contraseña: " intento
    while [[ "$pass_valida" -eq 0 ]] ; do
        if [[ "$password" == "$intento" ]]; then
            echo "contraseña correcta"
            pass_valida=1
        else
            read -p "Contraseña invalida intentalo denuevo: " intento 
        fi
    done
}
read -p "Ingrese la contraseña valida: " password
comporbador_contraseña $password 
