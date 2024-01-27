int[] arrayInt; //Definicion de la variable
int[] visor;
char[] listaLetras = {'a','b','c','d'};

void setup() {
    
    arrayInt = new int[10]; //Instanciacion de la variable. 10 casillas -> 0...9
}

void draw() {
    
    //Asignacion de valores
    arrayInt[0] = 5; //Escritura en primera componente

    println("El valor de la componente 0 es: "+arrayInt[0]);

    //Bucle para inicializar todas las componentes
    for(int i=0;i<arrayInt.length;i++)
    {
        arrayInt[i] = 0; //Por defecto a valor '0'
    }
    println("----------");

    //Bucle para mostrar todas las componentes
    for(int i=0;i<arrayInt.length;i++)
    {
        println("El valor de la componente "+i+" es: "+arrayInt[i]);
    }
    println("----------");

    visor = arrayInt; //El array 'visor' ahora esta conectado a las celdas de "arrayInt"

    visor[7] = 999;
    
    //Bucle para mostrar todas las componentes
    for(int i=0;i<arrayInt.length;i++)
    {
        println("El valor de la componente "+i+" es: "+arrayInt[i]);
    }
    println("----------");
    
    //Bucle para mostrar todas las componentes
    for(int i=0;i<listaLetras.length;i++)
    {
        println("El valor de la letra "+i+" es: "+listaLetras[i]);
    }


    exit();
}
