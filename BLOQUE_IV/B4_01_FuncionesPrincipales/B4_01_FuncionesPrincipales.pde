
void setup() {

    size(600, 900);
}

void draw() {

  //println("draw()!!");

}


void mousePressed() {

  println("mousePressed!!");

}

void mouseDragged() {

  println("mouseDragged!!");

}

void mouseReleased() {

  println("mouseReleased!!");

}

void keyPressed()
{
    println("keyPressed!!");

    if(key == 'A') {
        println(key);
    }
    else if(key == 'D') {
        println(key);
    }

    if (key == CODED) {
        if (keyCode == UP) {
            println("UP");
        } 
        else if (keyCode == DOWN) {
            println("DOWN");
        } 
    }
}

void keyReleased() {

    println("keyReleased!!");
    println(key);
}