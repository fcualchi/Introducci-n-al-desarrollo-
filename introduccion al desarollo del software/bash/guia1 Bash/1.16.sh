:<< "L"
Crear un script de Bash que reciba números naturales y que luego los imprima por pantalla (la cantidad de números ingresados puede variar).
L
#!/bin/bash
for i in $@; do 
    echo $i
done

