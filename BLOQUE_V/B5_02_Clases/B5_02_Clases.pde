//Definicion de la CLASE CABALLO
class Caballo{

    String nombre;
    int velocidad; //km/h

    Caballo()
    {
        nombre = "Jolly Jumper";
        velocidad = 30;
    }

    Caballo(String n, int v)
    {
        nombre = n;
        velocidad = v;
    }

    void setVelocidad(int v)
    {
        velocidad = v;
    }

    String getNombre()
    {
        return nombre;
    }

    String getDatos()
    {
        String datos;
        datos = "NOMBRE: " + nombre + "\n";
        datos += "VELOCIDAD: " + velocidad + "\n";

        return datos;
    }
}

//Objeto de la clase
Caballo miCaballo;
Caballo tuCaballo;

void setup() {

    miCaballo = new Caballo(); //Instanciacion del caballo. Se crea un NUEVO Caballo -> objeto
    tuCaballo = new Caballo("Spirit",65);
}

void draw() {

    //println("Mi caballo se llama: " + miCaballo.getNombre());
    //println("Tu caballo se llama: " + tuCaballo.getNombre());

    println(miCaballo.getDatos());
    println(tuCaballo.getDatos());

    exit();
}