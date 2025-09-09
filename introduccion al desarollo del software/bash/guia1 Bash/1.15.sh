:<< "l" 
Crear un script de Bash que solicite un número que representa un día de la semana, 
imprimir por pantalla de que día se trata. En caso de que el número esté fuera de rango, 
solicitarlo nuevamente.

l
#!/bin/bash
calculadora_dia() {
    local num=$1
    local dias=(lunes martes miercoles jueves viernes sabado domingo)
    while (( num < 1 || num > 7)) do
        read -p "Tienes que ingresar un numero valido intentalo denuevo: " num
    done
    ((num--)) ## es como escribir num -= 1
    echo "${dias[$num]}"
    

}

read -p "Ingresa un numero para calcular a que dia de la semana corresponde: " numdia
calculadora_dia "$numdia"
