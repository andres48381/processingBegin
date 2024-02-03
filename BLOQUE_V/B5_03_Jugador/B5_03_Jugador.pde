//Definicion de la CLASE CABALLO
class Jugador{

    String nombre;
    int velocidad;
    //Dimensiones
    int alto;
    int ancho;
    //Posicion
    float x;
    float y;
    //Imagen
    PImage img;

    Jugador(String n)
    {
        nombre = n;
        velocidad = 10;
        alto = 50;
        ancho = 70;
        img = loadImage("nave.png");

    }

    void setPosicion(float _x, float _y)
    {
        x = _x;
        y = _y;
    }

    float getX()
    {
        return x;
    }

    void mover(int direccion)
    {
        x = x + direccion*velocidad;
    }

    void dibujar()
    {
        //rectMode(CENTER);  // Set rectMode to CORNERS
        //fill(100);  // Set fill to gray
        //rect(x, y, alto, ancho);  // Draw gray rect using CORNERS mode

        image(img, x, y);
    } 
}

//Objeto de la clase
Jugador jugador;
PImage bg;
    
void setup() {

    size(600, 938);
    bg = loadImage("background.jpg");
    jugador = new Jugador("NAVE");
    jugador.setPosicion(400,860);
}

void draw() {

    background(bg);
    jugador.dibujar();


}

void keyPressed()
{

    if(key == 'A') {
        jugador.mover(-1);
    }
    else if(key == 'D') {
        jugador.mover(1);
    }
}
