//Mono//
int numVida = 1;
int posicionMonoX;
int posicionMonoY;
int barraWidth = 4;
int maximoBarra = 30;

float barra;
float posicionX = posicionMonoX + (barraWidth/2);
float posicionY = posicionMonoY + (barraWidth/2);

//Propiedades del proyectil
int diametro = 6;

float fuerza = 0;
float masa = random(10, 20);

PVector posicion = new PVector(0,0);
PVector velocidad;
PVector aceleracion;

//Ambiente
float gravedad = 10;
float absorcionDeEnergia = 0.02;

//Modo de Juego
int flechas = 5;
int tamanioGordo = (int) random(20,30);
int posicionGordoX, posicionGordoY;

boolean fuego;
boolean modoJuego = true;
boolean truco = false;
boolean fallo = false;
boolean gameOver = false;
boolean golpe = false;

class Juego{
    
    void juegoIniciado(){
         if(mousePressed == true && mouseButton == LEFT && mouseY > 330)
         {
            System.out.println("Hola");
            posicionX = posicionMonoX + (barraWidth/2);
            posicionY = posicionMonoY + (barraWidth/2);
            barra = dist(posicionX, posicionY, mouseX, mouseY);
            if(barra > maximoBarra)
            {
               barra = maximoBarra; 
              
            }
            fuerza = 10 * (barra / maximoBarra);
         }
         uno.MovMan1((float)angulo);
         if(mousePressed == true && mouseButton == LEFT && mouseY <= 330) operaciones();
         if(fuego == true)
         {
            fire();
         }
         
         
         modoJuego();
         
    }
    
    void operaciones(){
          System.out.println("Hola2");
          if(mouseY < 330 && flechas > 0){
            masa = random(10,25);
            posicion = new PVector(posicionX, posicionY);
            velocidad = new PVector(-cos((float)angulo) * barra, -sin((float)angulo) * barra);
            aceleracion = new PVector((fuerza/masa) * 5, 0.5);
            velocidad.add(aceleracion);
            posicion.add(velocidad);
            golpe = false;
            truco = false;
            fallo = false;
            
            flechas--;
            fuego = true;
            fire();
          }
    }
    
    void fire(){
       fill(47, 79, 79);
       ellipseMode(CENTER);
       ellipse(posicion.x, posicion.y, 6,6);
       if (velocidad.x < 0.2 && velocidad.x > -0.2)
        {
          velocidad.x = 0;
        }
       
        if (posicion.y > 327 && abs(velocidad.y) < 0.01)
        {
          posicion.y = 327;
          velocidad.y = 0;
          velocidad.x = velocidad.x * 0.9;
          aceleracion.y = 0;
        }
        else if (posicion.y > 327)
        {
          posicion.y = 327;
        }
       
        if (posicion.y + diametro > 327 && velocidad.x == 0)
        {
          velocidad.y = -velocidad.y * .7;
           
          if(golpe != true)
          {
            truco = true;
          }
        }
        else if (posicion.y + diametro > 327)
        {
          velocidad.y = -velocidad.y * .7;
          velocidad.x = velocidad.x - .2;
           
          if(golpe != true)
          {
            truco = true;
          }
        }
        aceleracion = new PVector(0, (gravedad * 3) / frameRate);
        velocidad.add(aceleracion);
        posicion.add(velocidad);
        
  }
  
  void modoJuego(){
      if(tamanioGordo == 0)
      {
        tamanioGordo = (int)random(15, 30);
         
        posicionGordoX = (int)random(0, width - tamanioGordo);
        posicionGordoY = (int)random(0, 330 - tamanioGordo);
      }
       
      if(modoJuego == true)
      {
        stroke(0);
        image(fatboy1, posicionGordoX, posicionGordoY);
      }
       
      if(posicion.x > posicionGordoX && posicion.x < posicionGordoX + tamanioGordo &&
         posicion.y > posicionGordoY && posicion.y < posicionGordoY + tamanioGordo &&
         modoJuego == true)
      {
        flechas = 5;
         
        golpe = true;
         
        tamanioGordo = (int)random(15, 30);
        posicionGordoX = (int)random(0, width - tamanioGordo);
        posicionGordoY = (int)random(0, 330 - tamanioGordo);
      }
  }
    
    
}