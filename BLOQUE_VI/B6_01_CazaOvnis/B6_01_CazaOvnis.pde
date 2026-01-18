import processing.sound.*;

//Objeto de la clase
Jugador nave, ovni;
Jugador[] ovnis;
PImage fondo;
int limiteIzquierda, limiteDerecha;
int limiteArriba, limiteAbajo;
    
void setup() {

    size(600, 938);
    fondo = loadImage("background.jpg");

    limiteIzquierda = 0;
    limiteDerecha = 520;
    limiteArriba = 0;
    limiteAbajo = 900;

    SoundFile laser = new SoundFile(this, "laser.wav");
    nave = new Jugador("NAVE",limiteIzquierda,limiteDerecha,limiteArriba,limiteAbajo,laser,"nave.png");
    nave.setPosicion(400,860);

    ovni = new Jugador("OVNI",limiteIzquierda,limiteDerecha,limiteArriba,limiteAbajo,laser,"ovni.png");
    ovni.setPosicion(200, 20);

    ovnis = new Jugador[5];

    for(int i=0;i<5;i++)
    {
        ovnis[i] =  new Jugador("OVNI",limiteIzquierda,limiteDerecha,limiteArriba,limiteAbajo,laser,"ovni.png");
        ovnis[i].setPosicion(200+i*40, 50+i*55);
        ovnis[i].velocidad(i%2==0 ? -1 : 1,1);
    } 
}

void draw() {

    background(fondo);

    if(nave._vidas > 0)
    {
        nave.dibujar();
        nave.mover();
    }
    else
    {
        textSize(50);
        text("GAME OVER",180,500);
    }

    //Control de enemigos
    for(int i=0;i<5;i++)
    {
        if(ovnis[i]._vidas > 0)
        {
            ovnis[i].dibujar();
            ovnis[i].mover();

            boolean enemigoTocado = compruebaDisparos(nave,ovnis[i]);

            if(enemigoTocado == true)
            {
                ovnis[i]._vidas = 0;
            }

            boolean naveTocada = compruebaColision(nave,ovnis[i]);

            if(naveTocada == true)
            {
                nave._vidas = 0;
            }

        }  
    }
    
    /*
    if(ovni._vidas > 0)
    {
        ovni.dibujar();
        ovni.mover();

        boolean tocado = compruebaDisparos(nave,ovni);

        if(tocado == true)
        {
            ovni._vidas = 0;
        }
    }*/
}

boolean compruebaDisparos(Jugador jugador, Jugador enemigo)
{
    boolean colision = false;

    //Comprueba disparo
    if(jugador._disparando == true)
    {
        if(abs(jugador._x - enemigo._x)<10)
        {
           colision = true;
        }
    }   

    return colision;    
}

boolean compruebaColision(Jugador jugador, Jugador enemigo)
{
    boolean colision = false;

    //Comprueba colision
    if((abs(jugador._x - enemigo._x)<20) && (abs(jugador._y - enemigo._y)<20))
    {
        colision = true;    
    }   

    return colision;    
}


void keyPressed()
{
    if (key == CODED) {
        if (keyCode == LEFT) {
            nave.velocidad(-1,0);
        } 
        else if (keyCode == RIGHT) {
            nave.velocidad(1,0);
        } 
        else if (keyCode == UP) {
            nave.velocidad(0,-1);
        } 
        else if (keyCode == DOWN) {
            nave.velocidad(0,1);
        } 
    }    
}
void mousePressed() {

    nave.disparar(true);
   
}
void mouseReleased() {

    nave.disparar(false);
    nave.resetTimeLaser();
   
}

