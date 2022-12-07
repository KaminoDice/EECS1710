import gifAnimation.*;

final int SIZE_W = 800;
final int SIZE_H = 600;

final int WHITE = color(255,255,255);
final int BLACK = color(0,0,0);
final int MASK = color(255,0,0,100);

final float FPS = 60;           // frames per second
final float UPDATE_PERIOD = 1;  // seconds between updates
final float FRAMES_PER_UPDATE = UPDATE_PERIOD * FPS;

PImage orig, img;
boolean fade = true;
float rWidth; 
float rHeight; 
float ampX,ampY;
int t=0;

void setup() {
  size(800, 600);
  orig = loadImage("yogaBike.jpg");
  
  background(WHITE);
  imageMode(CENTER);
  image(orig,width/2,height/2);
  
}

void draw() {
  
  //imageFade(orig);
  
  //img = imageNoise(orig, 150);
  
  //img = imageWarp(orig, 150,200);
  ampX = 25*sin(TWO_PI * t/360);
  ampY = 25*sin(TWO_PI * t/360);
  img = imageWarp(orig, ampX,ampY);
  t++;
}

void mousePressed() {
  fade = !fade;
}

void keyPressed() {
  
}
