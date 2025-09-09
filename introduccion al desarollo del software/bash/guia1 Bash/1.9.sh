:<< "M"
Crear un script de Bash que reciba un nombre. Si el nombre ingresado es “Manu” imprimir por pantalla “Hola, profe”, de no ser así imprimir por pantalla “Hola, (nombre)”
M
#!/bin/bash
echo Cual es tu nombre
read name

if [ -z name ]; then
	echo No has ingresado nada
else
	if [ ${name,,} =  'manu' ]; then #${variable,,} quiere decir que lo esta pasando a minusculas ^^ se pasa a mayus
		echo Hola, Profe
	else
		echo "Hola, $name"
	fi
fi
