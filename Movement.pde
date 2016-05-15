import kinect4WinSDK.Kinect;
import kinect4WinSDK.SkeletonData;
import java.lang.Math;

Kinect kinect = new Kinect(this);
ArrayList <SkeletonData> bodies = new ArrayList<SkeletonData>();

float x1, x2, x3, x4, y1, y2, y3, y4, m, m1, x5,y5;
double anguloRadianes, angulo, anguloRadianes1, angulo1;

boolean hecho = false;
int fin;

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
    /////////////////////////////////////////
    x3= bodies.get(i).skeletonPositions[Kinect.NUI_SKELETON_POSITION_HAND_LEFT].x;
    y3= bodies.get(i).skeletonPositions[Kinect.NUI_SKELETON_POSITION_HAND_LEFT].y;
    x4= bodies.get(i).skeletonPositions[Kinect.NUI_SKELETON_POSITION_ELBOW_LEFT].x;
    y4= bodies.get(i).skeletonPositions[Kinect.NUI_SKELETON_POSITION_ELBOW_LEFT].y;
    
    m1 = ((y4-y3)/(x4-x3));
    anguloRadianes1 = Math.atan(m1);
    angulo1 = Math.toDegrees(anguloRadianes1);
    angulo1 = Math.abs(angulo1);
    hecho = swipe();
  }
}
  boolean swipe(){
    fin = 0;   
    if(angulo1<=30 && angulo1>=0){
      
      fin=1;
    }
    if(fin==1){
      return true;
    }
    return false;
  }
}