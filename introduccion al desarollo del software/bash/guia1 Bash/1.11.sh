:<< "L"
Crear un script de Bash que realice las 4 operaciones básicas (suma, resta, multiplicación y división) a dos números enteros ingresados por el usuario. Crear una función para cada una de las operaciones.
L
#!/bin/bash

sumar() {
	local num1=$1
	local num2=$2 
	local suma=$(( $num1 + $num2 )) 
	echo $suma
        }
restar() {
	local resta=$(( $1 - $2 ))
	echo $resta
         }
multiplicar() {
	local producto=$(( $1 * $2 ))
	echo $producto
              }
division() {
	local cociente=$(( $1 / $2 ))
	echo $cociente
}

if [ "$#" -gt 2 ]; then 

    if [ "$2" = "+" ]; then
	    resultadosuma=$(sumar "$1" "$3")
	    echo "el resultado de la suma es: $resultadosuma"

    elif [ "$2" = "-" ]; then
	    resultadoresta=$(restar "$1" "$3")
	    echo "el resultado de la resta es: $resultadoresta"

    elif [ "$2" = "x" ]; then
        resultadoproducto=$(multiplicar "$1" "$3")	
        echo "el resultado de la multiplicacion es: $resultadoproducto" 

    elif [ "$2" = "/" ]; then
	    if [ "$3" -ne 0 ]; then
		    resultadocociente=$(division "$1" "$3")
            echo "el resultado de la divicion es: $resultadocociente"
	    else
		    echo recuerda que no puedes divir por cero
	    fi
    else 
	    echo ingresa numeros validos porfavor 

    fi
else 
echo necesitas almenos tres caracteres
fi 
