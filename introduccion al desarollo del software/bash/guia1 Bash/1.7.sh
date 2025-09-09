:<< "Q"
Crear un script de Bash que solicite la edad del usuario y determine si es mayor o menor de edad.
Q
echo Me podes decir tu edad ?
read age 
if [ "$age" -ge 18 ]; then  # if (( age <= 18 )); then 
	echo Ya sos mayor de edad
else
	echo sos un pibe 
fi
