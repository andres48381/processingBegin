boolean resultado; //Almacenaje de la operacion
int numero = 6; //Numero a evaluar

//Funcion que se ejecuta al principio una sola vez -- Propia de Processing
void setup()
{
  resultado = false;
}

//Funcion que se ejecuta ciclicalmente -- Propia de Processing
void draw()
{ 
  
  //Operador de IGUALDAD
  resultado = (numero == 5);
  println("1 - Resultado es: "+resultado);
  
  //Operador de DESIGUALDAD
  resultado = (numero != 5); 
  println("2 - Resultado es: "+resultado);
  
  //Operador de MAYOR que...
  resultado = (numero > 5);
  println("3 - Resultado es: "+resultado);
  
  //Operador de MAYOR o IGUAL que...
  resultado = (numero >= 5);
  println("4 - Resultado es: "+resultado);

  //Operador de MENOR que...
  resultado = (numero < 5);
  println("5 - Resultado es: "+resultado);
  
  //Operador de MENOR o IGUAL que...
  resultado = (numero <= 5);
  println("6 - Resultado es: "+resultado);
  
  //Operador NEGADO
  resultado = true;
  resultado = !resultado;
  println("6 - Resultado es: "+resultado);
  
  //Operador OR
  resultado = (numero == 5) || (numero == 6);
  println("7 - Resultado es: "+resultado);
  
  //Operador AND
  resultado = (numero > 0) && (numero < 10);
  println("8 - Resultado es: "+resultado);

  exit(); //Fin del programa
}
