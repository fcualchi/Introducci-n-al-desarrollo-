:<< "M"
Crear un script de Bash que reciba dos números (base y altura) 
para luego calcular el perímetro de un rectángulo.
M
#!/bin/bash
echo "Ingresa el valor de la base"
read base
echo "Ingresa el valor de la altura"
read altura
resultado=$(($base * $altura))

echo "El perimetro es $resultado"