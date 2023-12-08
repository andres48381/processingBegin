
//Esto es un comentario de una linea

/*

Esto es un comentario de bloque

todas las lineas deben terminar en un ";" incidicando un finalización 

*/

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
//--- Salida por pantalla de mensajes, instrucción println("contenido")
//-----------------------------------------
println("Hola Mundo"); //puede mostrarse por pantalla cualquier texto comprendido entre " "
println(101); //puede mostrarse por pantalla cualquier numero insertandose directamente
println(entero); //puede proporcionarse una variable y sacar su contenido por pantalla
println("Mi decimal vale: "+decimal); //puede concatenarse varios datos, haciendo uso del operador + 
println("Mi letra es: "+letra+", y mi palabra es: ",letra,palabra);
println("Soy "+booleano); 
//-----------------------------------------
//--- Declaración de variables inicializadas
//-----------------------------------------
int numero = 8;
int otroNumero = numero;
String palabraOriginal = "soy el 1";
String palabraCopia = palabraOriginal;

//-----------------------------------------
//--- Salida por pantalla de mensajes, instrucción println("contenido")
//-----------------------------------------
println("Mi numero es: "+numero+", y mi otroNumero es: "+otroNumero);
println("Mi palabraOriginal es: "+palabraOriginal+", y mi palabraCopia es: "+palabraCopia);
