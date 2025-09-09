:<< "J"
Toph, la maestra del control de tierra, está entrenando a sus estudiantes en la construcción de estructuras de energía. Para practicar la concentración y el orden,
les pide crear pirámides de palabras, donde cada fila representa un nivel de control de energía que deben dominar.
El tamaño de la pirámide indica cuántos niveles de energía deben acumular, y las palabras representan las técnicas o movimientos que van incorporando en su entrenamiento.
Se pide construir un script que reciba un número de niveles y una lista de palabras, y genere la pirámide correspondiente, respetando el orden en que se aprenden las técnicas.
J
numero=$1
for(( i=2 , $# < (i-1) , i++ )) do 
    echo "$i "
    



