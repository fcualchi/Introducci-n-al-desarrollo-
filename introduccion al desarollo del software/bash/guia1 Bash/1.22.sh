:<< "w"
Crear un script de Bash que reciba como parámetro los nombres de dos archivos y una sus contenidos en uno nuevo 
llamado “concatenados.txt”.
w
#!/bin/bash
fucionador_archivos(){
    cat $1 $2 >  concatenados.txt
}

fucionador_archivos $1 $2