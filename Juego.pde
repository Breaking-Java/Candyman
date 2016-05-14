//Mono//
int numVida = 1;
int posicionMonoX = 100;
int posicionMonoY = 600;
int barraWidth = 4;
int maximoBarra = 30;
int arcRestLength = 13;
int arcRestAngulo = 94;
int arcRestRate = 9;
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
         if(mousePressed == true  && mouseY < 330)
         {
            System.out.println("Hola");
            posicionX = posicionMonoX + (barraWidth/2);
            posicionY = posicionMonoY + (barraWidth/2);
            barra = dist(posicionX, posicionY, mouseX, mouseY);
            if(barra > maximoBarra)
            {
               barra = maximoBarra; 
              
            }
            refreshFlecha();
            fuerza = 10 * (barra / maximoBarra);
         }
         uno.MovMan1((float)angulo);
         if (mousePressed == false)
          {
            restFlecha();
          }
         
         if(fuego == true)
         {
           System.out.println(velocidad.x);
           refreshFlecha();
           fire();
         }
         
         
         modoJuego();
        
   
  //Prints messages if according to the game mode
  
  messages();
         
    }
    
    void fire(){
       fill(0);
       
       ellipse(posicion.x, posicion.y, 6,6);
       if (velocidad.x < 0.2 && velocidad.x > -0.2)
        {
          velocidad.x = 0;
        }
       
        if (posicion.y > 630 && abs(velocidad.y) < 0.01)
        {
          posicion.y = 630;
          velocidad.y = 0;
          velocidad.x = velocidad.x * 0.9;
          aceleracion.y = 0;
        }
        else if (posicion.y > 630)
        {
          posicion.y = 630;
        }
       
        if (posicion.y + diametro > 630 && velocidad.x == 0)
        {
          velocidad.y = -velocidad.y * .7;
           
          if(golpe != true)
          {
            truco = true;
          }
        }
        else if (posicion.y + diametro > 630)
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
        posicionGordoY = (int)random(0, 630 - tamanioGordo);
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
        posicionGordoY = (int)random(0, 630 - tamanioGordo);
      }
  }
    
    



 
//Actions to preform when the mouse has been released

 
//Moved the sling back to its "rest" posicion, only works with one quadrent :(
public void restFlecha()
{
  if (angulo < radians(arcRestAngulo))
  {
    angulo = radians(arcRestAngulo);
  }
  else if (angulo != radians(arcRestAngulo))
  {
    angulo = angulo - radians(5);
  }
 
  if (barra < arcRestLength )
  {
    barra = arcRestLength ;
  }
  else if (barra != arcRestLength )
  {
    barra = barra - arcRestRate;
  }
  refreshFlecha();
}
 
public void refreshFlecha()
{
  pushMatrix();
  translate(posicionX, posicionY);
  rotate((float)angulo); 
  popMatrix();
}
 

 
public void messages()
{
  if(modoJuego == true)
  {
    if(flechas == 0 && (velocidad.x == 0 || posicion.x > width || posicion.x < 0))
    {
      gameOver = true;
      flechas++;
    }
     
    if(gameOver == true)
    {
      fallo = false;
      truco = false;
       
      textSize(36);
      textAlign(CENTER);
      fill(255, 0 , 0);
      text("GAME OVER\nYOU LOSE", width / 2, 170);
      posicionGordoX = -100;
      posicionGordoY = -100;
       
      textSize(24);
      fill(220);
      rect(width * .75, 60, 150, 80);
      rect(width * .75, 190, 150, 80);
      fill(0);
      text("New Game", width * .75 + 75, 105);
      text("Exit Game \nMode", width * .75 + 75, 225);
      textSize(12);
      text("(Shoot to select)", width / 2, 230);
       
      if(posicion.x > width * .75 && posicion.x < width * .75 + 80 &&
         posicion.y > 60 && posicion.y < 140)
      {
        modoJuego = true;
        flechas = 5;
        
       
        tamanioGordo = (int)random(15, 30);
     
        posicionGordoX = (int)random(0, width - tamanioGordo);
        posicionGordoY = (int)random(0, 330 - tamanioGordo);
     
        golpe = false;
        truco = false;
        fallo = false;
        gameOver = false;
      }
       
      if(posicion.x > width * .75 && posicion.x < width * .75 + 80 &&
              posicion.y > 190 && posicion.y < 270)
      {
        modoJuego = false;
      }
    }
     
    if(golpe == true && truco == true)
    {
      fallo = false;
      gameOver = false;
 
      textSize(36);
      textAlign(CENTER);
      fill(255, 0 , 0);
      text("TRICK SHOT!", width / 2, 170);
    }
     
    if(fallo == true && golpe == false && truco == false)
    {
      truco = false;
      gameOver = false;
       
      textSize(36);
      textAlign(CENTER);
      fill(255, 0 , 0);
      text("fallo!", width / 2, 170);
    }
  }
   
  if(posicion.x > posicionGordoX && modoJuego == true && golpe == false)
  {
    fallo = true;
    truco = false;
  }
}
}
 