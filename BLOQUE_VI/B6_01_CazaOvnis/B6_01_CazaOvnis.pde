import processing.sound.*;

Jugador nave; //Nave protagonista
Jugador ovni; //Ovni solitario
Jugador[] ovnis; //VECTOR de ovnis

PImage fondo; //Fondo de pantalla

//Limites de la zona de juego
int limiteIzquierda, limiteDerecha;
int limiteArriba, limiteAbajo;

int contador; //Cantidad de ovnis que quedan
int cantidadOvnis; //Cantidad de ovnis inicial
    
/**
* @brief Funcion inicial del programa
*/
void setup() {

    //Tamaño ventana
    size(600, 938);

    //Imagen de fondo de ventana
    fondo = loadImage("background.jpg");

    contador = cantidadOvnis = 5;

    //Coordendas del recinto
    limiteIzquierda = 0;
    limiteDerecha = 550; //550
    limiteArriba = 0;
    limiteAbajo = 900; //900

    //Nave protagonista
    SoundFile laser = new SoundFile(this, "laser.wav"); //Nuevo sonido de laser
    nave = new Jugador("NAVE",limiteIzquierda,limiteDerecha,limiteArriba,limiteAbajo,laser,"nave.png");
    nave.setPosicion(limiteDerecha/2, limiteAbajo - 35); //Posicion inicial de la nave

    //Ovni solitario
    ovni = new Jugador("OVNI",limiteIzquierda,limiteDerecha,limiteArriba,limiteAbajo,laser,"ovni.png");
    ovni.setPosicion(200, 20); //Posicion inicial del ovni

    //Grupo de ovnis - VECTOR
    ovnis = new Jugador[cantidadOvnis];

    //Bucle para crear cada Ovni en el VECTOR
    for(int i=0;i<cantidadOvnis;i++)
    {
        ovnis[i] =  new Jugador("OVNI",limiteIzquierda,limiteDerecha,limiteArriba,limiteAbajo,laser,"ovni.png");

        //Posicion ovnis. Cada ovni empieza un poco desplazada de su anterior
        ovnis[i].setPosicion(200+i*40, 50+i*55);

        //Velocidad ovnis
        int vX = 1;

        //Si es PAR que empiece hacia la izquierda
        if(i % 2 == 0)
        {
            vX = -1;
        }

        //Los ovnis empiezan uno hacia izquierda, otro derecha... y todos hacia abajo
        ovnis[i].setVelocidad(vX, 1);
    } 
}

/**
* @brief Funcion principal cíclica de trabajo
*/
void draw() {

    //Fondo de pantalla
    background(fondo);

    //Marcador de ovnis en pantalla
    textSize(30);
    text("OVNIS: "+contador,70,70);
    
    //Si la nave tiene vida hay partida...
    if(nave.conVidas() == true)
    {
        //Dibjar y mover la nave
        nave.dibujar();
        nave.mover();

        //Control de enemigos
        for(int i=0; i<cantidadOvnis; i++)
        {
            //Por cada ovni con vida del VECTOR..
            if(ovnis[i].conVidas() == true)
            {
                //Dibujar y mover cada ovni del VECTOR
                ovnis[i].dibujar();
                ovnis[i].mover();

                //Comprobar si el disparo de la nave acierta en un ovni del VECTOR
                boolean enemigoTocado = compruebaDisparos(nave,ovnis[i]);

                //Si hay colision le restamos vida al ovni
                if(enemigoTocado == true)
                {
                    ovnis[i].restaVidas();
                    //Reducimos una unidad el contador de ovnis vivos
                    contador--;
                }

                //Comprobar si un ovni pasa por encima de la nave
                boolean naveTocada = compruebaColision(nave,ovnis[i]);

                //Si hay colision le restamos vida a la nave
                if(naveTocada == true)
                {
                    nave.restaVidas();
                }
            }  
        }

        //Si todos los ovnis se han eliminado se muestra mensaje de ganar
        if(contador == 0)
        {
            textSize(50);
            text("¡GANASTE!",180,500);  
        }
    }
    else
    {
        //...si no fin de la partida 
        textSize(50);
        text("GAME OVER",180,500);
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

/**
* @brief Comrpueba la colision entre el laser del jugador y el ovni enemigo
* @param jugador Nave protagonista
* @param jugador Ovni enemigo
* @return verdadero si hay colision entre laser y enemigo
*/
boolean compruebaDisparos(Jugador jugador, Jugador enemigo)
{
    boolean colision = false;

    //Comprueba disparo
    if(jugador._disparando == true)
    {
        if((abs(jugador._x - enemigo._x)<10) && (jugador._y > enemigo._y))
        {
           colision = true;
        }
    }   

    return colision;    
}

/**
* @brief Comrpueba la colision entre el jugador y el ovni enemigo
* @param jugador Nave protagonista
* @param jugador Ovni enemigo
* @return verdadero si hay colision entre enemigo y jugador
*/
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

/**
* @brief Funcion que se llama cada vez que se pulsa una tecla
*/
void keyPressed()
{
    //Flechas de movimiento de la nave
    if (key == CODED) {
        if (keyCode == LEFT) {
            nave.setVelocidad(-1,0);
        } 
        else if (keyCode == RIGHT) {
            nave.setVelocidad(1,0);
        } 
        else if (keyCode == UP) {
            nave.setVelocidad(0,-1);
        } 
        else if (keyCode == DOWN) {
            nave.setVelocidad(0,1);
        } 
    }
    //Reinicio de la partida
    else if(key == 'R')
    {
        //Resucita y reposiciona los ovnis del VECTOR
        for(int i=0;i<cantidadOvnis;i++)
        {
            ovnis[i].resucita();
            ovnis[i].setPosicion(200+i*40, 50+i*55);
        }

        //Resucita y reposiciona la nave protagonista
        nave.resucita();
        nave.setPosicion(400,860);

        //Reinicia el marcador de ovnis
        contador = cantidadOvnis;
    }    
}

/**
* @brief Funcion que se llama cada vez que se click el raton
*/
void mousePressed() {

    //Activa el laser de la nave
    nave.disparar(true);   
}

/**
* @brief Funcion que se llama cada vez que se suelta el click del raton
*/
void mouseReleased() {

    //Rearma el laser de la nave
    nave.disparar(false);
    nave.resetTimeLaser();   
}

