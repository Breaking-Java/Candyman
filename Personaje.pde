import java.lang.*;

  int ManoinX;
  int ManoinY;
  
  int ManofinX;
  int ManoFinY;
    
  int color1;
  int color2;
  int color3; 
  float angle;
  float aa, b, co, ca, c, c2;
class Personaje{
  
  Personaje(int c1, int c2, int c3)
  {
    color1 = c1; 
    color2 = c2; 
    color3 = c3; 
    
  }
  
  void DibMono()
  {    
    
    fill(color1,color2,color3);
    ellipse(100,550,20,20);
    
    strokeWeight(7);
    line(100,550,100,600);
    line(100,600,80,630);
    line(100,600,110,630);
    
    
    
  }
  
  void MovMan1(float angle)
  {
    aa = radians(angle);
    
     
    b = 30; 
    co = b * sin(aa);
    ca = b * cos(aa);
    
    println(ca, co, angle);
    
    c = 550 - co;
    c2 = ca + 100; 
    
    line(100,570, c2, c);
    noFill();
    arc(c2, c, 50, 50, -PI/2-aa,PI/2-aa );
      
  }
  
}