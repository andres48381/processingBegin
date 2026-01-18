

class Jugador{

    String _nombre;
    int _rapidez;
    //Dimensiones
    int _alto;
    int _ancho;
    //Posicion
    float _x;
    float _y;
    //Velocidad
    int _vX;
    int _vY;
    //Limites del recinto
    int _limiteIzquierda;
    int _limiteDerecha;
    int _limiteArriba;
    int _limiteAbajo;
    //Disparo
    boolean _disparando;
    SoundFile _laserSound;
    //Imagen
    PImage _imagen;
    int _vidas;

    Jugador(String nombre,int limiteIzquierda, int limiteDerecha, int limiteArriba, int limiteAbajo, SoundFile laserSound, String imagen)
    {
        _nombre = nombre;
        _rapidez = 5;
        _alto = 50;
        _ancho = 70;
        _imagen = loadImage(imagen);
        _limiteIzquierda = limiteIzquierda;
        _limiteDerecha = limiteDerecha;
        _limiteArriba = limiteArriba;
        _limiteAbajo = limiteAbajo;

        _disparando = false;
        _laserSound = laserSound;
        _vidas = 1;

    }

    void setPosicion(float x, float y)
    {
        _x = x;
        _y = y;
    }

    float getX()
    {
        return _x;
    }
    
    void mover()
    {
      //Ecuacion movimiento
      _x = _x + _vX*_rapidez;
      _y = _y + _vY*_rapidez;
    
      if(_x < _limiteIzquierda)
      {
          _vX = -_vX;
      }
      else if(_x > _limiteDerecha)
      {
           _vX = -_vX;
      }
      
      if(_y < _limiteArriba)
      {
          _vY = -_vY;
      }
      else if(_y > _limiteAbajo)
      {
          _vY = -_vY;
      }
    }

    void velocidad(int x_, int y_)
    {
      _vX =x_;
      _vY =y_;
    }

    void dibujar()
    {
       if(_vidas > 0)
       {
          image(_imagen, _x, _y);

          if(_disparando)
          {
              //LINEA
              //Borde AZUL
              strokeWeight(6);
              stroke(255, 0, 0);
              line(_x+32, _y, _x+32, 0);
          }
       }
    } 

    void disparar(boolean disparando)
    { 
        _disparando = disparando;

        if(_disparando && !_laserSound.isPlaying())
        {
            _laserSound.play();
        }
        else{
            _laserSound.stop();
        }
    }
}
