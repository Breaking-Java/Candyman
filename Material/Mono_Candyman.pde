 Mono uno;
int x = 0;

void setup()
{
  frameRate(15);
 uno = new Mono(0,0,0); 
 size(800,600);
 

}

void draw()
{
  if(x==89){x =0;}
    background(255);
     uno.DibMono(); 
    uno.MovMan1(x);
    x++;
  
}