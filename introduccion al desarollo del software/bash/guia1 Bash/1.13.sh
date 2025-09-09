:<< "l"
Crear un script de Bash que solicite el ingreso de un número n y que luego calcule su factorial.
l
echo ingrese un numero para calcular su factorial
read num
if [ "$num" -ge 0 ]; then #mayor o igual a cero
    resultado=1
    for (( i = 1; i <= num ; i++ )) do
        ((resultado= i * resultado ))
    done
    echo "$resultado"


else 
    echo no hay factorial de numeros negativos
fi
#definicion de factorial
#5!= 5 x4 x3 x2 x1