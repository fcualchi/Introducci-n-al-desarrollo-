:<< 'M' 
Crear un script de Bash que le solicite al usuario el ingreso de su nombre y su apellido 
(por separado) y que luego imprima por pantalla su nombre completo.
M
#!/bin/bash
echo 'Profavor introduce tu nombre'
read Name
echo 'y tu apellido??'
read Lastname
echo ''tu nombre completo es $Name $Lastname''