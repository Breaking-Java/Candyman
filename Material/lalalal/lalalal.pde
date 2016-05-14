int numFrames = 3;  // The number of frames in the animation
int frame = 0;
PImage[] images = new PImage[numFrames];
PImage start_instruction1;
void setup(){
  start_instruction1 = loadImage ("gesture_background.png");
  background(start_instruction1);
  size(1024, 768);  
  images[0]  = loadImage("touch/0.png");
  images[1]  = loadImage("touch/1.png"); 
  images[2]  = loadImage("touch/2.png");
}

void draw(){
  frame = (frame+1) % numFrames;  //Para crear el ciclo
  image(images[frame], 10, 200, 550, 385);
  delay(1000);
}