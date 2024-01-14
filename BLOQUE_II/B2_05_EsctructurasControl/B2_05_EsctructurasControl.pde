int huevos;
float temperatura;
int edadMeses;
char clase;

//Funcion que se ejecuta al principio una sola vez -- Propia de Processing
void setup()
{
  huevos = 12;
  temperatura = 39.5;
  edadMeses = 13;
  clase = 'C';
}

//Funcion que se ejecuta ciclicalmente -- Propia de Processing
void draw()
{ 
  //IF
  //Permite decidir ejecutar una accion
  if(huevos == 12)
  {
    println("Tenemos una docena!");
  }  
  
  //IF...ELSE
  //Obliga a tomar un camino A o B
  if(temperatura > 35)
  {
    println("Riesgo de calor");
  }
  else
  {
    println("No hay riesgo de calor");
  }  
  
  //IF...ELSE IF...ELSE
  if(edadMeses < 12)
  {
    println("Tiene menos de un año");
  }
  else if(edadMeses == 12)
  {
    println("Tiene justo 1 año");
  }
  else
  {
    println("Ya tiene más de 1 año");
  }
  
  //SWITCH CASE...
  switch(clase)
  {
    case 'A':
      println("Es la clase A");
      break;
          
    case 'B':
      println("Es la clase B");
      break;
      
    case 'C':
      println("Es la clase C");
      break;
      
    default:
      println("Clase no encontrada!");
      break;
  }
  
  exit();

}
