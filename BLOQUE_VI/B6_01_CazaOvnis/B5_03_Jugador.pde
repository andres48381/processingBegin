   /**
    * @brief Clase para representar un Jugador en la partida (protagonista, enemigo...)
    */
class Jugador{

    //Nombre del jugador
    String _nombre;

    //Dimensiones del jugador
    int _alto;
    int _ancho;
    //Posicion del jugador
    float _x;
    float _y;
    //Velocidad del jugador
    int _vX;
    int _vY;
    int _rapidez;
    //Limites del recinto
    int _limiteIzquierda;
    int _limiteDerecha;
    int _limiteArriba;
    int _limiteAbajo;
    //Disparo
    boolean _disparando;
    SoundFile _laserSound; //Sonido del laser
    int _timeLaser; //Duracion del laser
    
    PImage _imagen; //Imagen para el jugador

    int _vidas; //Contador de vidas

    /**
    * @brief Constructor para crear un nuevo jugador
    * @param nombre Nombre del jugador
    * @param limiteIzquierda Coordenadas del muro izquierdo del recinto
    * @param limiteDerecha Coordenadas del muro derecho del recinto
    * @param limiteArriba Coordenadas del muro superior del recinto
    * @param limiteAbajo Coordenadas del muro inferior del recinto
    * @param laserSound Sonido para cuando se dispara el laser
    * @param imagen Imagen para el jugador
    */
    Jugador(String nombre,int limiteIzquierda, int limiteDerecha, int limiteArriba, int limiteAbajo, SoundFile laserSound, String imagen)
    {
        _nombre = nombre;

        _rapidez = 5; //Si se quiere que sea mas rapido se puede incrementar
        _alto = 64; //Tamaño de la imagen a cargar
        _ancho = 64; //Tamaño de la imagen a cargar
        _imagen = loadImage(imagen);

        _limiteIzquierda = limiteIzquierda;
        _limiteDerecha = limiteDerecha;
        _limiteArriba = limiteArriba;
        _limiteAbajo = limiteAbajo;

        _disparando = false;
        _laserSound = laserSound;

        _timeLaser = 0;
        _vidas = 1; //Por defecto solo una vida

    }

    /**
    * @brief Establece los valores de posicion
    * @param x_ Posicion en el eje X
    * @param y_ Posicion en el eje Y
    */
    void setPosicion(float x, float y)
    {
        _x = x;
        _y = y;
    }

    /**
    * @brief Establece los valores de velocidad
    * @param x_ Velocidad en el eje X
    * @param y_ Velocidad en el eje Y
    */
    void setVelocidad(int x_, int y_)
    {
      _vX =x_;
      _vY =y_;
    }

    /**
    * @brief Funcion que indica si tiene vidas el jugador
    * @return Verdadero si le quedan vidas
    */
    boolean conVidas()
    {
      return _vidas > 0;
    }

    /**
    * @brief Funcion que resta una vida al jugador
    */
    void restaVidas()
    {
      _vidas--;
    }

    /**
    * @brief Funcion que recupera vidas al jugador
    */
    void resucita()
    {
      _vidas = 1;
    }
    
    /**
    * @brief Actualiza la posicion del personaje con los valores de velocidad y rapidez. Controla los rebotes con los bordes de la pantalla
    */
    void mover()
    {
      //Ecuacion movimiento
      //En cada pasada se incrementa la posición con el valor de rapidez
      _x = _x + _vX*_rapidez;
      _y = _y + _vY*_rapidez;
    
      if(_x < _limiteIzquierda)
      {
        //Invierte el sentido en el eje X tras rebotar en la izquierda
        _vX = -_vX;
      }
      else if(_x > _limiteDerecha)
      {
        //Invierte el sentido en el eje X tras rebotar en la derecha
        _vX = -_vX;
      }
      
      if(_y < _limiteArriba)
      {
        //Invierte el sentido en el eje Y tras rebotar arriba
        _vY = -_vY;
      }
      else if(_y > _limiteAbajo)
      {
        //Invierte el sentido en el eje Y tras rebotar abajo
        _vY = -_vY;
      }
    }

   /**
    * @brief Funcion para dibujar al personaje y su laser
    */
    void dibujar()
    {
        //Imagen del personaje
        image(_imagen, _x, _y);

        //Dibujo del laser
        if(_disparando)
        {
            //laser rojo
            strokeWeight(6); //Grosor linea
            stroke(255, 0, 0); //Color rojo (RED, GREEN, BLUE)
            line(_x + _ancho/2, _y, _x + _ancho/2, 0);

            //Temporizador de laser
            _timeLaser++;

            //Fin del laser
            if(_timeLaser > 10)
            {
                _disparando = false;
            }
        }
    } 

    /**
    * @brief Funcion para disparar el laser
    * @param disparando Activa y desactiva el laser
    */
    void disparar(boolean disparando)
    { 
        _disparando = disparando;

        //Control de sonido
        if(_disparando)
        {
            if(!_laserSound.isPlaying())
            {
                _laserSound.play();
            }
        }
        else{
            _laserSound.stop();
        }
    }

    /**
    * @brief Reinicia el laser para volver a utilizarse
    */
    void resetTimeLaser()
    {
      _timeLaser = 0;
    }
}
