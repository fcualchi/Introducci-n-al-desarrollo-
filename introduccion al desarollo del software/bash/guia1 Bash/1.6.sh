:<< "L"
Crear un script de Bash que le solicite al usuario el ingreso de un número e indicar si el número es mayor, 
menor o igual a 0. Imprimir por pantalla.
L
#!bin/bash
echo Ingresa un numero
read num1

if [ "$num1" -gt 0  ]; then #existen 2 modos de hacer las operacione dentro del corchetes
    echo "El numero $num1 es mayor a cero"
elif (( $num1 < 0 )); then #dentro de 2 parentesis
    echo "El numero $num1 es menor a cero"
else
    echo "El numero $num1 es cero" 
fi 