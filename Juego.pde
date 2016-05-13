int numVida = config.getVida();

int diameter = 6; 

int gravedad = 10;
float fuerza = 0;
float masa = random(10, 20);
PVector posicion = new PVector(0,0);
PVector velocidad;
PVector aceleracion;


int gordoEnX, gordoEnY;

boolean disparar;
boolean fallo = false;
boolean gameOver = false;
boolean truco = false;
boolean golpe = false;

class Juego{
 
  
  public void fire()
  {
  fill(47, 79, 79);
  ellipseMode(CENTER);
  ellipse(posicion.x, posicion.y, 6, 6);
 
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
 
  if (posicion.y + diameter > 327 && velocidad.x == 0)
  {
    velocidad.y = -velocidad.y * .7;
     
    if(golpe != true)
    {
      truco = true;
    }
  }
  else if (posicion.y + diameter > 327)
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


public void mouseReleased()
{
  if (mouseY < 330 && gamemode == true && ammo > 0)
  {
    masa = random(10, 25);
    posicion = new PVector(slingHingeLocationX, slingHingeLocationY);
    velocidad = new PVector(-cos(angle) * slingLength,
               -sin(angle) * slingLength);
    aceleracion = new PVector((fuerza / masa) * 5, 0.5);
 
    velocidad.add(aceleracion);
    posicion.add(velocidad);
     
    golpe = false;
    truco= false;
    fallo = false;
     
    
     disparar = true;
    fire();
  }
 
  /*if (mouseX > width - 130 && mouseX < width - 50 && mouseY > 340 && mouseY < 360)
  {
    if (grid == false)
    {
      grid = true;
      drawFrame();
      refreshSling();
    }
    else
    {
      grid = false;
      drawFrame();
      refreshSling();
    }
  }*/
   
  if (mouseX > width - 130 && mouseX < width - 50 && mouseY > 370 && mouseY < 390)
  {
    if (gamemode == false)
    {
      gamemode = true;
      roundNumber = 0;
       
      targetSize = (int)random(15, 30);
     
      gordoEnX = (int)random(0, width - targetSize);
      gordoEnY = (int)random(0, 330 - targetSize);
       
      golpe = false;
      trickshot = false;
      missed = false;
      gameover = false;
    }
    else
    {
      gamemode = false;
    }
  }
}
  
  
  
  
  
  
}