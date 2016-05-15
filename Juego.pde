//Mono//
int numVida = 3;
int posicionMonoX = 100;
int posicionMonoY = 500;
int barraWidth = 2;
int maximoBarra = 30;
int arcRestLength = 13;
int arcRestAngulo = 94;
int arcRestRate = 9;
float barra;
float posicionX = posicionMonoX + (barraWidth/2);
float posicionY = posicionMonoY + (barraWidth/2);
double anguloRadianes2;
int golpes=0;

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
 
int tamanioGordo = (int) random(20,30);
int posicionGordoX, posicionGordoY;

boolean fuego,intento=false;
boolean modoJuego = true;
boolean truco = false;
boolean fallo = false;
boolean gameOver = false;
boolean golpe = false;

class Juego{
    void juegoIniciado(){
         
         if(My<600){
           posicionX = posicionMonoX + (barraWidth/2);
            posicionY = posicionMonoY + (barraWidth/2);
            anguloRadianes2 = atan2(My - posicionY, Mx - posicionX);
            barra = dist(My, Mx, posicionX, posicionY);
            if(barra > maximoBarra)
            {
               barra = maximoBarra; 
              
            }
            refreshFlecha();
            fuerza = 10 ;
          }
         
         uno.MovMan1((float)angulo);
      
          if (hecho){
              if (My < 600 && modoJuego == true)
              {
                masa = random(10, 25);
                posicion = new PVector(posicionX, posicionY);
                velocidad = new PVector(cos((float)anguloRadianes2) * barra,
                           sin((float)anguloRadianes2) * barra);
                aceleracion = new PVector((fuerza / masa) * 5, 0.5);
             
                velocidad.add(aceleracion);
                posicion.add(velocidad);
                 
                golpe = false;
                truco = false;
                fallo = false;
                 
                
                fuego = true;
                fire();
              }
              else if(My < 600 && modoJuego == false)
              {
                masa = random(10, 25);
                posicion = new PVector(posicionX, posicionY);
                velocidad = new PVector(cos((float)anguloRadianes2) * barra,
                           sin((float) anguloRadianes2) * barra);
                aceleracion = new PVector(cos((float)anguloRadianes2) * (fuerza / masa) * 5, 0.5);
             
                velocidad.add(aceleracion);
                posicion.add(velocidad);
                 
                fuego = true;
                fire();
              }
             
              if (Mx > width - 130 && Mx < width - 50 && My > 340 && My < 360)
              {
                refreshFlecha();
                
              }
               
              if (Mx > width - 130 && Mx < width - 50 && My > 370 && My < 390)
              {
                if (modoJuego == false)
                {
                  modoJuego = true;
                  
                        
                  tamanioGordo = (int)random(15, 30);
                 
                  posicionGordoX = (int)random(0, width - tamanioGordo);
                  posicionGordoY = (int)random(0, 330 - tamanioGordo);
                   
                  golpe = false;
                  truco= false;
                  fallo = false;
                  gameOver = false;
                }
                else
                {
                  modoJuego = false;
                }
              }
                      
                      }
                     
                     if(fuego == true)
                     {
                       refreshFlecha();
                       fire();
                     }
                     
                     
                     modoJuego();
                    
               
              //Prints messages if according to the game mode
              

         
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
       if(golpes==0||golpe==true){
        posicionGordoX = (int)random(600, width );
        posicionGordoY = (int)random(300, 600);
        golpes++;
        golpe=false;
      }
      //if(intento==true){
        //numVida--;
    //intento=false;}
      //if(numVida==0){
        //num_pantalla=12;
        //golpes =0;
        //numVida=config.getVida();
      //}
      if(golpes==7){
        num_pantalla=11;
      golpes =0;
        numVida=config.getVida();}
      if(modoJuego == true)
      {
        stroke(0);
        image(fatboy1, posicionGordoX, posicionGordoY);
      }
       
      if(posicion.x > posicionGordoX && posicion.x < posicionGordoX+128 &&
         posicion.y > posicionGordoY && posicion.y < posicionGordoY+128 &&
         modoJuego == true)
      {
        golpe = true;
      }
      if(posicion.x > 500 && posicion.x < posicionGordoX+128 && modoJuego == true)
      {
        intento = true;
      }
  }
    
    




public void refreshFlecha()
{
  pushMatrix();
  translate(posicionX, posicionY);
  rotate((float)anguloRadianes2); 
  popMatrix();
}
 

 

}