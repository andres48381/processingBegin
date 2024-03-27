int vidas;
int puntos;
int disparosEsp;

PrintWriter output; //Generador fichero

void setup() {

    vidas=3;
    puntos=150;
    disparosEsp=2;

    output = createWriter("Partida.txt"); 
}

void draw() { 

    //Salida por pantalla
    output.println("VIDAS:"+vidas);
    output.println("PUNTOS:"+puntos);
    output.println("DISPAROS_ESPECIALES:"+disparosEsp);

    output.flush(); // Writes the remaining data to the file
    output.close(); // Finishes the file

    exit();

}
