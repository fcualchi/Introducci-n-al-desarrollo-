/*
Moe, cansado del poco éxito de su bar, decidió organizar un evento que lo catapulte a la fama en las redes: el
”Llamarada Moe”. Durante este evento ofrece tragos con descuento a sus clientes más leales. Sin embargo, quiere
medir cuánto puede venderles antes de que terminen en el hospital. Para ello, necesita un programa que calcule el
estado en que quedará cada cliente después de beber. Nos provee, además, una fórmula que aprendió en un curso de
coctelería en las afueras de Springfield.
*/
#include<stdio.h>
#include <stdbool.h>
const int EDAD_MIN = 18;
const int AÑO_CRITICO = 2007;
const int AÑO_ACTUAL = 2025;
const int MES_ACTUAL = 9;
const int MES_MAX = 12;
const int MES_MIN = 1;
const int EDAD_MINIMA = 18;
const int AÑO_MINIMO = 0;
const int FLAG_INICIADOR = 1;
const int PUNTOS_INICIALES = 0;
//suma
//PRE funciona literalmente con el formato mencionado si se usa con letras no esta contemplado
//PRE El año de nacimiento no puede ser mayor al actual
//POST devuleve 1 si es mayor a 18 en caso contrario devuelve 0
int comprobar_edad() {
    int año_critico = AÑO_ACTUAL - EDAD_MINIMA;
    float fecha = 0.0;
    int año = AÑO_MINIMO ;
    int mes = MES_MIN;
    int fecha_valida =  FLAG_INICIADOR;
    int es_mayor = 0;
    while ( fecha_valida != 0){
        printf("¿Cuál es tu fecha de nacimiento? (formato: yyyy.mm) ");
        scanf("%f", &fecha);
        año = (int) fecha;
        mes =(int)((fecha - (float)año)*100.0f);
        if (año < AÑO_ACTUAL && mes >= MES_MIN && mes <= MES_MAX && año > AÑO_MINIMO){
            if (año < año_critico) {
                fecha_valida = 0;
                es_mayor = 1;
            }
            else if (año == año_critico){
                    if (MES_ACTUAL > mes) {
                        fecha_valida = 0;
                        es_mayor = 1;
                    }
                    else{
                        fecha_valida = 0;
                    }
            }
            else {
                fecha_valida = 0;
            }
        }
        else{
            printf("El mes o año son invalidos recuerda que el mes tiene que esta entre 1 y 12\ny el año no puede ser mayor al actual vuelve a intentarlo\n");
        }   
    }
return es_mayor;
}
//PRE no acepta nada que no sea [S] o [N] en mayusculas
//POST si escoje [S] devuelve TRUE si escoje [N] devuelve False
bool consultar_hielo(){
    char respuesta= ' ';
    bool resultado;
    while (respuesta != 'N' && respuesta != 'S' ){
        printf("¿Quiere hielo?\n");
        printf("La respuesta puede ser [S] por sí y [N] por no: ");
        scanf(" %c",&respuesta);
        if (respuesta == 'N' ){
            resultado = false;
        }
        else if (respuesta == 'S') {
            resultado = true;
        }
    }
    return resultado;
}
//PRE Evalua solo las opciones validas en caso contrario vuelve a preguntar
//POST devuelve la cantidad de puntos que representa segun lo que escojamos 
int escoger_y_calcular_segun_trago() {
    char trago = ' ';
    int valor = PUNTOS_INICIALES;
    while ( trago != 'W' && trago != 'G' && trago != 'F' && trago != 'C') {
        printf("¿Qué trago quiere?\npuedes escojer entre\nWhiskey [W]\nGin Tonic [G]\nFernet con Coca [F]\nCampari con Jugo [C]\n");
        scanf(" %c", &trago );
        if (trago == 'W'){
            valor = 40;
        } 
        else if (trago == 'G') {
            valor = 30;
        }
        else if (trago == 'F') {
            valor = 20;
        }
        else if (trago == 'C') {
            valor = 10;
        }
    }
    return valor;
}
//PRE solo toma en cuenta valores naturales del 0 al 10 inclusive si no vuelve a preguntar
int pedir_cantidad_de_vasos() {
    int numero_vasos = -1;
    while (numero_vasos < 0 || numero_vasos > 10){
        printf("¿Cuántos vasos suele consumir?\nLa respuesta debe ser un número natural entre 0 y 10 inclusive: ");
        scanf("%i",&numero_vasos);
    }
    return numero_vasos;
}
//PRE resive un numero positivo y calcula el estado en el que se encuentra 
// POST devuelve un string u otro segun el intervalo en el que se encuentre 
char *clasificador_puntaje(int puntaje){
    if (puntaje >= 0 && puntaje<= 100) {
        return "-SOBRIO-";
        }
    else if (puntaje >= 101 && puntaje <= 200) {
        return "-ALEGRE-";
        }
    else if (puntaje >= 201 && puntaje <= 300) {
        return "-BORRACHO-";
        }
    else {
        return "-HOSPITAL-";
        }
        
}
//PRE Todos los datos que ocupa la funcion ya estan validados en el codigo antes
//POST devuelve un entero mayor o igual a cero  
int calcular_puntaje(int hielo){
    int calculo_de_puntos_por_trago = PUNTOS_INICIALES;
    int calculo_final = PUNTOS_INICIALES;
        
    calculo_de_puntos_por_trago = escoger_y_calcular_segun_trago() - hielo ;
    calculo_final= calculo_de_puntos_por_trago*pedir_cantidad_de_vasos();
    return calculo_final;
}
int main() {
    int puntos_hielo = PUNTOS_INICIALES;
    int resultado = PUNTOS_INICIALES;
    if (comprobar_edad() == 1){
        if (consultar_hielo()) {
            puntos_hielo = 5 ;
            resultado = calcular_puntaje(puntos_hielo);
            printf("Con las respuestas brindadas, tu estado es: %s \n",clasificador_puntaje(resultado));
        }
        else {
            puntos_hielo = -100;
            resultado = calcular_puntaje(puntos_hielo);
            printf("Con las respuestas brindadas, tu estado es: %s \n",clasificador_puntaje(resultado));
        }
        
    }
    
    else {
        printf("sos menor de edad quedas -REBOTADO-\n");
    }
    
}
