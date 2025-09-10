:<< "M"

Azula, princesa del Reino del Fuego, planea iniciar una guerra y sabe que no puede atacar a cualquiera 
sin analizar primero su fuerza y experiencia en combate. Para decidir a quién atacar y a quién evitar, 
revisa cuidadosamente los combates ganados y la fuerza de cada personaje, aliados y enemigos, buscando 
maximizar sus victorias y asegurarse de no provocar conflictos innecesarios con su propia familia.
Se dispone de un archivo de estadísticas de combate con el siguiente formato: nombre,es_aliado,fuerza,
combates_ganados

Se pide crear un script que reciba como parámetros la ruta al archivo de estadísticas y el nombre de un personaje, 
y busque a Azula y al personaje pasado por parámetro. Una vez encontrados, deberá imprimir por pantalla un mensaje 
según los siguientes criterios:

Si el personaje es aliado (A): TODAVIA NO ES MOMENTO.
Si Azula tiene más fuerza y más combates ganados: GANA.
Si Azula tiene más fuerza pero menos combates ganados: EMPATE.
Si Azula tiene menos fuerza pero más combates ganados: EMPATE.
Si Azula tiene menos fuerza y menos combates ganados: PIERDE.
Cualquier otro escenario: BATALLA INCIERTA.
M
#!/bin/bash
obtener_datos_para_combate() {
    local archivo="$1"
    local nombre="$2"
    local item="$3"
    
    grep "^$nombre," $archivo | cut -d , -f "$3"
}
calculadora_combate() {
    local combates_Azula="$(obtener_datos_para_combate "$1" "Azula" "4")"
    local fuerza_Azula="$(obtener_datos_para_combate "$1" "Azula" "3")"
    local personaje_existe="$(obtener_datos_para_combate "$1" "$2" "1" )"
    local bando_personaje="$(obtener_datos_para_combate "$1" "$2" "2" )" 
    
    if [[ -n $personaje_existe ]]; then
        if [[ $bando_personaje == "E" ]]; then
            fuerza_personaje="$(obtener_datos_para_combate "$1" "$2" "3")"
            combates_personaje="$(obtener_datos_para_combate "$1" "$2" "4")"
            if (( fuerza_Azula > fuerza_personaje && combates_Azula > combates_personaje )); then
                echo "GANA"
                exit 0
            elif (( fuerza_Azula > fuerza_personaje && combates_Azula < combates_personaje )); then
                echo "EMPATE"
                exit 0 
            elif (( fuerza_Azula < fuerza_personaje && combates_Azula > combates_personaje )); then
               echo "EMPATE"
               exit 0 
            elif (( fuerza_Azula < fuerza_personaje && combates_Azula < combates_personaje )); then
               echo "PIERDE"
               exit 0 
            else 
                echo "BATALLA INCIERTA"

            fi
        else
            echo "TODAVIA NO ES MOMENTO"
            exit 0
        fi
    
    else
        exit 1
    fi
}
calculadora_combate "$1" "$2"