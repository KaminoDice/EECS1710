import processing.video.*;

final int SIZE_W = 800;
final int SIZE_H = 600;

final int WHITE = color(255,255,255);
final int BLACK = color(0,0,0);
final int MASK = color(255,0,0,100);

final float FPS = 60;           // frames per second


PImage orig, img;

float rWidth; 
float rHeight; 

Movie myMovie;
Capture cam;

void setup() {
  size(640, 480);
  background(WHITE);
  imageMode(CENTER);
  
  cameraSetup();
 
}



void draw() {
  showWebCamera();
  //showWebCamera2();
  
}

void mousePressed() {
  
}

void keyPressed() {
  
}
