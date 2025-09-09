:<< "g"
Crear un script de Bash que solicite al usuario un número natural n y cree n cantidad 
de carpetas con los nombres carpeta1, carpeta2, etc.

g
crear_carpetas() {
    
    for (( i=1 ; i <= $1 ; i++ )); do
        mkdir "Carpeta$i"
    done
}

read -p "Cuantas carpetas quieres crear: " Numero
crear_carpetas Numero 