import java.lang.*;

  
  float color1;
  float color2;
  float color3; 
  
  float coorX;
  float coorY;
class Personaje {
  
  Personaje(float c1, float c2, float c3, float x, float y)
  {
    color1 = c1; 
    color2 = c2; 
    color3 = c3; 
    
    coorX = x;
    coorY = y; 
    
  }
  
  void DibMono()
  {    
    
    fill(color1,color2,color3);
    ellipse(coorX,coorY,20,20);
    
    strokeWeight(7);
    line(coorX,coorY,coorX,coorY+50);
    line(coorX,coorY + 50,coorX - 20,coorY + 80);
    line(coorX,coorY + 50,coorX + 20,coorY + 80);
    
    
    
  }
  
  void MovMan1(float angulo)
  {
    float aa = radians(angulo);
    
    float b; 
    b = 30; 
    float co = b * sin(aa);
    float ca = b * cos(aa);
    
    println(ca, co, angulo);
    
    float c = coorY + 20 - co;
    float c2 = ca + coorX; 
    
    line(coorX,coorY + 20, c2, c);
    noFill();
    arc(c2, c, 50, 50, -PI/2-aa,PI/2-aa );
      
  }
}