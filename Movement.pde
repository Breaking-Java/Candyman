import kinect4WinSDK.Kinect;
import kinect4WinSDK.SkeletonData;
import java.lang.Math;

Kinect kinect = new Kinect(this);
ArrayList <SkeletonData> bodies = new ArrayList<SkeletonData>();

float x1, x2, x3, x4, y1, y2, y3, y4, m, m1;
double anguloRadianes, angulo, anguloRadianes1, angulo1;

boolean hecho = false;
int inicio, medio, fin;

class Movement
{
  void IniciaKinect()
{
  for (int i=0; i<bodies.size (); i++) 
  {
    x1= bodies.get(i).skeletonPositions[Kinect.NUI_SKELETON_POSITION_HAND_RIGHT].x;
    y1= bodies.get(i).skeletonPositions[Kinect.NUI_SKELETON_POSITION_HAND_RIGHT].y;
    x2= bodies.get(i).skeletonPositions[Kinect.NUI_SKELETON_POSITION_ELBOW_RIGHT].x;
    y2= bodies.get(i).skeletonPositions[Kinect.NUI_SKELETON_POSITION_ELBOW_RIGHT].y;
    m = ((y2-y1)/(x2-x1));
    anguloRadianes = Math.atan(m);
    angulo = Math.toDegrees(anguloRadianes);
    angulo = Math.abs(angulo);
    System.out.println("Arco Tangente de " + m + " = " + angulo + "º");
    System.out.println("Pendiente: "+m);
    System.out.println("El ángulo es: "+angulo);
    textSize(45);
    text("Ángulo de disparo: ", 10, 30); 
    fill(0, 102, 153);
    text(angulo + "º", 10, 60);
    /////////////////////////////////////////
    x3= bodies.get(i).skeletonPositions[Kinect.NUI_SKELETON_POSITION_HAND_LEFT].x;
    y3= bodies.get(i).skeletonPositions[Kinect.NUI_SKELETON_POSITION_HAND_LEFT].y;
    x4= bodies.get(i).skeletonPositions[Kinect.NUI_SKELETON_POSITION_ELBOW_LEFT].x;
    y4= bodies.get(i).skeletonPositions[Kinect.NUI_SKELETON_POSITION_ELBOW_LEFT].y;
    m1 = ((y4-y3)/(x4-x3));
    anguloRadianes1 = Math.atan(m1);
    angulo1 = Math.toDegrees(anguloRadianes1);
    angulo1 = Math.abs(angulo1);
    System.out.println("Pendiente: "+m1);
    System.out.println("El ángulo es: "+angulo1);
    textSize(45);
    text("Ángulo: ", 10, 30); 
    fill(0, 102, 153);
    text(angulo1 + "º", 10, 60);
    
     hecho = swipe(angulo1);
    
   if(hecho){
     System.out.println("Ya hiciste el swipe");
   }
   else System.out.println("No has hecho el swipe");
   
  }
  }
  boolean swipe(double d){
    inicio = medio = fin = 0;
    if(d<=90 &&d>60){
      System.out.println("Swipeinicio");
      inicio=1;
    }
    
    if(d<=60 && d>30){
      System.out.println("Swipe medio");
      medio=1;
    
    } 
    
    if(d<=30 && d>=0){
      System.out.println("Swipe final");
      fin=1;
    }
    
    int swipe = inicio+medio+fin;
    if(swipe==3){
      return true;
    }
    return false;

  }
  
  



}