//Funcion que se ejecuta al principio una sola vez -- Propia de Processing
void setup()
{

}

//Funcion que se ejecuta ciclicalmente -- Propia de Processing
void draw()
{ 
    int i = 0;

    //Bucle WHILE(){....} 
    while(i<10)
    {
        println("Soy el numero i: "+ i);
        i++;
    } 

    int j = 10;

    //Bucle DO{...} WHILE() 
    do
    {
        println("Soy el numero j: "+ j);
    } 
    while(j<10);

    //Bucle FOR(...;...;...){...}
    for(int k=0;k<10;k++)
    {
        println("Soy el numero k: "+ i); 
    } 


    //Ejemplo con adivinanza de numero aleatorio
    float numero = 0;
    int intentos = 0;

    do
    {   
        println("Generando numero aleataorio entre 0 y 20...");
        numero = (int)random(0, 20); //Forzado a entero, p.ej 10.2->10
        println("Soy el numero: "+ numero);
        intentos++;
    } 
    while(numero!=10); //El numero a encontrar es el 10

    println("Si ves este mensaje es porque has acertado a la: "+intentos+"!!!");

    exit();
} 