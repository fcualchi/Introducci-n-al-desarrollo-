:<< 'm'
Crear un script de Bash que reciba dos números e imprima por pantalla su suma.
m
#!/bin/bash
echo 'Ingrese el primer numero'
read numero1 
echo "Ingrese el segundo numero"
read numero2

suma=$((numero1 + numero2))
echo "tu suma de $numero1 y $numero2 es $suma"