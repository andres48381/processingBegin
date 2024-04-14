

class Jugador{

    String nombre;
    int velocidad;
    //Dimensiones
    int alto;
    int ancho;
    //Posicion
    float x;
    float y;
    //Limites del recinto
    int limIzq;
    int limDer;
    int limArr;
    int limAbaj;
    //Disparo
    boolean disparando;
    SoundFile laserSound;
    //Imagen
    PImage img;

    Jugador(String n,int limI, int limD, int limAr, int limAb, SoundFile laser)
    {
        nombre = n;
        velocidad = 10;
        alto = 50;
        ancho = 70;
        img = loadImage("nave.png");
        limIzq = limI;
        limDer = limD;
        limArr = limAr;
        limAbaj = limAb;

        disparando = false;
        laserSound = laser;

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

    void mover(int x_, int y_)
    {
        //Ecuacion movimiento
        x = x + x_*velocidad;
        y = y + y_*velocidad;

        if(x < limIzq)
        {
            x = limIzq;
        }
        else if(x > limDer)
        {
            x = limDer;
        }
        
        if(y < limArr)
        {
            y = limArr;
        }
        else if(y > limAbaj)
        {
            y = limAbaj;
        }
    }

    void dibujar()
    {
        //rectMode(CENTER);  // Set rectMode to CORNERS
        //fill(100);  // Set fill to gray
        //rect(x, y, alto, ancho);  // Draw gray rect using CORNERS mode

        image(img, x, y);

        if(disparando)
        {
            //LINEA
            //Borde AZUL
            strokeWeight(6);
            stroke(255, 0, 0);
            line(x+32, y, x+32, 0);
        }
    } 

    void disparar(boolean disparo)
    { 
        disparando = disparo;

        if(disparando && !laserSound.isPlaying())
        {
            laserSound.play();
        }
        else{
            laserSound.stop();
        }
    }
}

