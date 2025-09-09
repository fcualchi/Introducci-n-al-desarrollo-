:<< "k"
Crear un script de Bash que solicite al usuario los siguientes datos:
 -Nombre -Apellido -Legajo -Materia preferida Luego imprimir en un archivo “datos_alumno.txt” toda la información.
k


solicitar_Y_guardar_datos(){
    read -p "Ingrese sus nombres: " nombre segundo_nombre
    read -p "Ingrese sus apellidos: " apellido segundo_apellido
    read -p "Ingrese su legajo: " legajo
    read -p "Ingrese el nombre de su materia preferida: " materia
    echo "$nombre $segundo_nombre" > "datos_alumnos.txt"
    echo "$apellido $segundo_apellido" >> "datos_alumnos.txt"
    echo "$legajo" >> "datos_alumnos.txt"
    echo "$materia" >> "datos_alumnos.txt"
}
solicitar_Y_guardar_datos