:<< "j"
Crear un script de Bash que solicite al usuario un número natural n y cree n cantidad de archivos con los nombres archivo1, 
archivo2, etc. Escribir en todos los archivos el nombre del usuario actual.
j
#!/bin/bash
creador_archivos() {
    local n=$1
    local escribir_usuario=$USER 
    for (( i=1 ; i <= $n ; i++ )); do
        echo $escribir_usuario > "archivo$i.txt" 
    done

}

read -p "Ingrese el numero de archivos a crear: " n_archivos
creador_archivos $n_archivos