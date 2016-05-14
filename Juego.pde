int numVida = 1;

int barraWidth = 4;
int monoPosicionX = 60;
int monoPosicionY = 300;
float monoSaLocationX = monoPosicionX + (barraWidth / 2);
float monoSaLocationY = monoPosicionY + (barraWidth / 2);

int gravedad = 10;
float fuerza = 0;
float masa = random(10, 20);
PVector posicion;
PVector velocidad;
PVector aceleracion;

int flechas;
float barra, maxBarra = 30;

int tamanioGordo;

int gordoEnX, gordoEnY;

boolean disparar;
boolean juegoIniciado = false;
boolean fallo = false;
boolean gameOver = false;
boolean truco = false;
boolean golpe = false;

class Juego{
 
  
  public void fire()
  {
  fill(47, 79, 79);
  //ellipseMode(CENTER);
  //ellipse(posicion.x, posicion.y, 6, 6);
 
  if (velocidad.x < 0.2 && velocidad.x > -0.2)
  {
    velocidad.x = 0;
  }
 
  if (abs(velocidad.y) < 0.01)
  {
    velocidad.y = 0;
    velocidad.x = velocidad.x * 0.9;
    aceleracion.y = 0;
  }
 
  if (velocidad.x == 0)
  {
    velocidad.y = -velocidad.y * .7;
     
    if(golpe != true)
    {
      truco = true;
    }
  }
  
  aceleracion = new PVector(0, (gravedad * 3) / frameRate);
  velocidad.add(aceleracion);
}


public void mouseReleased()
{
  if (mouseY < 330 && juegoIniciado == true && flechas > 0)
  {
    masa = random(10, 25);
    posicion = new PVector(monoSaLocationX, monoSaLocationY);
    velocidad = new PVector(-cos((float) angulo) * barra,
               -sin((float)angulo) * barra);
    aceleracion = new PVector((fuerza / masa) * 5, 0.5);
 
    velocidad.add(aceleracion);
     
    golpe = false;
    truco= false;
    fallo = false;
     
    
     disparar = true;
    fire();
  }
 
     

    if (juegoIniciado == false)
    {
      juegoIniciado = true;
      
       
      tamanioGordo = (int)random(15, 30);
     
      gordoEnX = (int)random(0, width - tamanioGordo);
      gordoEnY = (int)random(0, 330 - tamanioGordo);
       
      golpe = false;
      truco = false;
      fallo = false;
      gameOver = false;
    }
    else
    {
      juegoIniciado = false;
    }
}
  
  
  void juegoIniciado(){
     if (mousePressed == true && mouseY < 330)
     {
        monoSaLocationX = monoPosicionX + (barraWidth / 2);
        monoSaLocationY = monoPosicionY + (barraWidth / 2);
        //barra = dist(slingHingeLocationX, slingHingeLocationY, mouseX, mouseY);
     
        if (barra > maxBarra)
        {
          barra = maxBarra;
        }
     
        fuerza = 10 * (barra / maxBarra);
     }
       
      // Refreshs the sling and location of the projectile
      if (disparar == true)
      {
        fire();
      }
       
      modoJuego();
    
    
  }
  
  void modoJuego(){
   
    if(tamanioGordo == 0 && juegoIniciado == true)
    {
      tamanioGordo = (int)random(15, 30);
     
      gordoEnX = (int)random(0, width - tamanioGordo);
      gordoEnY = (int)random(0, 330 - tamanioGordo);
    }
   
    if(juegoIniciado == true)
    {
      stroke(0);
      rect(gordoEnX, gordoEnY, tamanioGordo, tamanioGordo);
    }
     
    if(posicion.x > gordoEnX && posicion.x < gordoEnX + tamanioGordo && posicion.y > gordoEnY && posicion.y < gordoEnY + tamanioGordo && juegoIniciado == true)
    {
      flechas = 3;            
      golpe= true;
       
      tamanioGordo = (int)random(15, 30);
      gordoEnX = (int)random(0, width - tamanioGordo);
      gordoEnY = (int)random(0, 330 - tamanioGordo);
    }
    
    
  }
  
  
  
}