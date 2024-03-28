int vidas;
int puntos;
int disparosEsp;

void setup() {

    vidas=0;
    puntos=0;
    disparosEsp=0;
}

void draw() {

    //Ejemplo 1
    //Nuevo array de Strings
    String[] saludos = loadStrings("Disney.txt");

    //El campo "length" prorpociona el numero de componentes en el array
    println("Hay " + saludos.length + " lineas");

    //Recorremos el array imprimiendo cada componente, es decir, cada linea
    for (int i = 0 ; i < saludos.length; i++) {
        println(saludos[i]);
    }

    //Ejemplo 2
    //Obtener valores
    String[] campos = loadStrings("Partida.txt");

    for (int i = 0; i < campos.length; i++) {

        String[] valor = split(campos[i], ':');
        
        //Comprobacion de formato correcto
        if(valor.length==2)
        {
            if(valor[0].equals("VIDAS"))
            {
                vidas = int(valor[1]);
            }
            else if(valor[0].equals("PUNTOS"))
            {             
                puntos = int(valor[1]);
            }
            else if(valor[0].equals("DISPAROS_ESPECIALES"))
            {
                disparosEsp = int(valor[1]);
            }
        }      
    }

    //Salida por pantalla
    println("VIDAS: "+vidas);
    println("PUNTOS: "+puntos);
    println("DISPAROS_ESPECIALES: "+disparosEsp);

    exit();

}
