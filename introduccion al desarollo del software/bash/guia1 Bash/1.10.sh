:<< "L"
Crear un script de Bash que reciba las longitudes de los lados de un triángulo y que
 luego indique si se trata de un triángulo equilátero, isósceles o escaleno.
L

if [ "$1" -gt 0 ] && [ "$2" -gt 0 ] && [ "$3" -gt 0 ]; then 
    
    if [ "$1" -eq "$2" ] && [ "$2" -eq "$3" ]; then
        echo los lados equivalen a un triangulo equilatero
    
    elif [ "$1" -eq "$2" ] || [ "$1" -eq "$3" ] || [ "$2" -eq "$3" ]; then
        echo los lados equivalen a un triangulo isosceles

    else 
       echo los lados quivalen a un triangulo escaleno 
    fi 
else 
   echo ingresaste numeros no validos o no los ingresaste 
fi

