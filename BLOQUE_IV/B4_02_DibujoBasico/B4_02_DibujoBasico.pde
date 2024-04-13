color colorCirculo; //Variable para color del circulo
int yCuadrado;

void setup() {
    colorCirculo = color(255, 204, 0);  // Define color 'c'
    yCuadrado = 120;
    size(600, 900);
}

void draw() {

    //Fondo
    background(125,125,200); //RGB

    //Borde NEGRO
    stroke(0);

    //2d Primitivas
    //CUADRADO
    //Relleno VERDE
    fill(0,255,0);    
    square(120, yCuadrado, 220);

    //CIRCULO
    //Relleno ROJO
    fill(colorCirculo);
    circle(mouseX, mouseY, 100);

    //LINEA
    //Borde AZUL
    stroke(0, 0, 255);
    line(120, 280, 540, 600);

    //TEXTO
    fill(0);
    textSize(60);
    text("MI JUEGO", 140, 620); 

}


void mousePressed() {

  //  = mouseX; 
  //  = mouseY; 
  colorCirculo = color(0, 255, 0); 
}

void mouseDragged() {

    //  = mouseX; 
    //  = mouseY; 
}

void mouseReleased() {
    //  = mouseX; 
    //  = mouseY; 
    colorCirculo = color(255, 204, 0);  
}

void keyPressed()
{
    if(key == 'A') {
        println(key);
    }
    else if(key == 'D') {
        println(key);
    }

    if (key == CODED) {
        if (keyCode == UP) {
            println("UP");
            yCuadrado--;
        } 
        else if (keyCode == DOWN) {
            println("DOWN");
            yCuadrado++;
        } 
    }
}

void keyReleased() {

  println("keyReleased!!");
}