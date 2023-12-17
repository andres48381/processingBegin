//-----------------------------------------
//--- Declaración de variables
//-----------------------------------------
//Cifras
int entero; //Variable que almacena un numero entero, p.ej 12,-45,1245...
float decimal; //Variable que almacena un numero decimal, p.ej 3.45, -4.87...
boolean booleano; //Variable que almacena un valor booleano, es decir "verdadero" o "falso"
//Letras
char letra; //Variable que almacena un caracter, p.ej 'a','Z','?'...
String palabra; //Variable que representa una cadena de caracteres, p.ej "mi casa", "perro"...

//-----------------------------------------
//--- Asignación de valores a las variables
//-----------------------------------------
entero = 10; //al ejecutar esta linea, la variable "entero" tiene asociado un valor numérico de "10"
decimal = 4.5;
booleano = true; //la variable del tipo boolean solo contempla los estados "true" o "false"
letra = 'A'; //los caracteres se delimitan por las comillas simples ' '
palabra = "Como estamos?"; //las palabras o frases se delimitan por comillas dobles " "

//-----------------------------------------
//--- Declaración de variables inicializadas
//-----------------------------------------
int numero = 8;
int otroNumero = numero;
String palabraOriginal = "soy el 1";
String palabraCopia = palabraOriginal;

//-----------------------------------------
//--- Operaciones
//-----------------------------------------
numero = entero + numero; //10 + 8 = 18 // SUMA
numero += entero; //18+10=28
numero++; //incremento 28->29

palabraCopia += " y el primero, y letra: ";
palabraCopia += letra;

decimal = numero * 6.5;
decimal--; //decremento de una unidad


//-----------------------------------------
//--- Salida por pantalla de mensajes, instrucción println("contenido")
//-----------------------------------------
//int
println("Mi numero es: "+numero);
//float
println("Mi decimal es: "+decimal);
//string
println(palabraCopia);
//bool
println("Soy un OR de false y booleano: "+ (booleano || false));
println("Soy un AND de false y booleano: "+ (booleano && false));
