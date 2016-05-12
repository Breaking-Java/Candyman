
import java.lang.*;

class Mono {
  
  float ManoinX;
  float ManoinY;
  
  float ManofinX;
  float ManoFinY;
    
  float color1;
  float color2;
  float color3; 
  
  Mono(float c1, float c2, float c3)
  {
    color1 = c1; 
    color2 = c2; 
    color3 = c3; 
    
  }
  
  void DibMono()
  {    
    
    fill(color1,color2,color3);
    ellipse(70,50,20,20);
    
    strokeWeight(7);
    line(70,50,70,100);
    line(70,100,50,130);
    line(70,100,90,130);
    
    
    
  }
  
  void MovMan1(float angulo)
  {
    float aa = radians(angulo);
    
    float b; 
    b = 30; 
    float co = b * sin(aa);
    float ca = b * cos(aa);
    
    println(ca, co, angulo);
    
    float c = 70 - co;
    float c2 = ca + 70; 
    
    line(70,70, c2, c);
    noFill();
    arc(c2, c, 50, 50, -PI/2-aa,PI/2-aa );
      
  }
  
}