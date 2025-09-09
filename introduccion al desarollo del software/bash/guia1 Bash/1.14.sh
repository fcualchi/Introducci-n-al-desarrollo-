:<< "k"
Crear un script de Bash que solicite al usuario el ingreso de un número par. 
En caso de que sea impar, solicitarlo nuevamente.
k
#!/bin/bash
numero_es_par () {
    local num=$1

    while (( num % 2 != 0 )); do
        echo Por favor intente otra vez ingresando un numero par
        read num
    done
        echo "correcto el numero $num es par" 
}
echo Ingrese un numero para verificar si es par
read num
numero_es_par "$num"
# aqui aprendi que la funcion modulo es igual 
