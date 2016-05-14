int poder = 0;

void setup()
{
  size(300,300);
  background(0);
  /*barra blanca de fondo*/
    fill(255);
    rect(48, 138, 204, 24);
}


void draw(){
    int fillX1 = ((frameCount%301) / 3 * 2);
    int a= fillX1-200;
    
    if(poder >= 300)
    {
      poder = 0;
    }
    
    //barra negra
      fill(0);
      if(a < -150)
      {
        fill(255,0,0);
        rect(250, 140, a, 20);
        //poder = (int)(poder + 7);
        poder++;
      }
      else if(a >= -150 && a < -100)
      {
        fill(255,128,0);
        rect(250, 140, a, 20);
       // poder = (int)(poder + 7);
       poder++;      
      }
      else if(a >= -100 && a < -50)
      {
        fill(255,255,0);
        rect(250, 140, a, 20);
        //poder = (int)(poder + 7);
        poder++;
      }
      else if(a >= -50 && a != 0)
      {
        fill(128,255,0);
        rect(250, 140, a, 20);
        //poder = (int)(poder + 7);
        poder++;
      }
      
    print(poder + " ");
}