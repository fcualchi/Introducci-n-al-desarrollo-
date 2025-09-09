:<< "L"
Crear un script de Bash que reciba un número entero e indique si el número es par o impar
L
#!/bin/bash
echo "Escoje un numero"
read numero
if [ -z $numero ]; then # -z variable lanza true si no hay nada en la variable
	echo "No has introducido nada"
else
	resto=$(( $numero % 2 ))
	if [ "$resto" -eq 0 ]; then
		echo "El numero $numero es par"
	else 
		echo "El numero $numero es impar"
	fi
fi

