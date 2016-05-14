int numFrames = 4;  // The number of frames in the animation
int frame = 0;
PImage[] images = new PImage[numFrames];
PImage start_instruction2;
PImage b_continue;

void setup(){
  start_instruction2 = loadImage ("swipe_background.png");
  background(start_instruction2);
  size(1024, 768);
  frameRate(2);
  
  images[0]  = loadImage("swipe/0.png");
  images[1]  = loadImage("swipe/1.png"); 
  images[2]  = loadImage("swipe/2.png");
  images[3]  = loadImage("swipe/3.png");
  
  b_continue = loadImage ("swipe/continue.png");
  
}

void draw(){
  frame = (frame+1) % numFrames;  //Para crear el ciclo
  image(images[frame], 10, 200, 550, 385);
  lol();
}

void lol(){
  if (mouseX>670 && mouseX<810 && mouseY>528 && mouseY<668) {
    image(b_continue, 670, 528);
    if (mousePressed && (mouseButton == LEFT)) {
    }
  }
}