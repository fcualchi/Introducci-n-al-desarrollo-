:<< "j"
Crear un script de Bash que imprima en un archivo llamado “ordenados.txt”
los nombres de todos los archivos del directorio actual ordenados según sus tamaños.
j
#!/bin/bash

archivos_ordenados(){
    local direccion=$1
    ls -LS "$direccion" > ordenados.txt # ls-LSr orden de menor a mayor
}

direccion=$(pwd) #con parentesis para ejecutar comandos
archivos_ordenados "$direccion"