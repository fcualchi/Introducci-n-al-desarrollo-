:<< "I"
Crear un script de Bash que imprima los primeros n números naturales. Solicitar al usuario el ingreso de n.
I
numeros_naturales () {
    echo "Ingresa un numero"
    read numero
    
    for (( i = 1; i <= $numero; i++ )) do # solo usar comillas en corchetes
        echo $i
    done
}

echo "Hasta que numero quieres contar"
numeros_naturales