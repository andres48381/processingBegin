import processing.sound.*;

//Objeto de la clase
Jugador nave;
PImage bg;
PImage ovni;
int limiteIzq, limiteDer;
    
void setup() {

    size(600, 938);
    bg = loadImage("background.jpg");

    limiteIzq = 0;
    limiteDer = 520;

    SoundFile laser = new SoundFile(this, "laser.wav");
    nave = new Jugador("NAVE",limiteIzq,limiteDer,0,900,laser);
    nave.setPosicion(400,860);

    ovni = loadImage("ovni.png");
    ovni.resize(100, 100);

}

void draw() {

    background(bg);
    nave.dibujar();

    image(ovni, 200, 20);
}

void keyPressed()
{
    if (key == CODED) {
        if (keyCode == LEFT) {
            nave.mover(-1,0);
        } 
        else if (keyCode == RIGHT) {
            nave.mover(1,0);
        } 
        else if (keyCode == UP) {
            nave.mover(0,-1);
        } 
        else if (keyCode == DOWN) {
            nave.mover(0,1);
        } 
    }

    if(key == '0')
    {
        nave.disparar(true);
    }
    
}

void keyReleased() {

    if(key == '0')
    {
        nave.disparar(false);
    }
}