//Muestra un valor numerico por pantalla
void impresoraNumeros(int numero)
{
  println("El numero es: "+numero);
}
//Muestra un valor String por pantalla
void impresoraTexto(String texto)
{
  println(texto);
}
//Devuelve el valor de la suma de los dos valores de entrada
int sumador(int a, int b)
{
  int resultado = a + b;
  return resultado;
}
//Construye una frase modelo con la palabra proporcionada
String miFrase(String palabra)
{
  return ("Soy una persona que se llama: "+palabra);
}
//Funcion que invoca a mas funciones
void GeneraTexto()
{
  impresoraNumeros(sumador(1,2));
  impresoraTexto(miFrase("Gandalf"));
}

//Funcion que se ejecuta al principio una sola vez -- Propia de Processing
void setup()
{
}

//Funcion que se ejecuta ciclicalmente -- Propia de Processing
void draw()
{ 
  //Prueba de sumador
  int numero1 = 10;
  int numero2 = 5;
  int suma;

  //Ejemplo de invocación SUMADOR
  suma = sumador(numero1, numero2);

  //Salida por pantalla
  impresoraNumeros(suma);
  
  //Ejemplo de invocación MIFRASE
  String frase = miFrase("Andrés");

  //Salida por pantalla
  impresoraTexto(frase);
  
  //Prueba de llamadas anidadas
  GeneraTexto();

  exit(); //Fin del programa
}
