

// simple clock animation

final float CLOCK_RADIUS = 200;
final float HOUR_RADIUS = CLOCK_RADIUS/2;
final float MIN_RADIUS =  2*CLOCK_RADIUS/3;
final float SEC_RADIUS =  4*CLOCK_RADIUS/5;

PVector hourHand;
PVector minHand;
PVector secHand;

int hr;
int mn;
int sc;

PImage[] animation;
int animIdx = 0;

void setup() {

  size(500, 500);

  hourHand = new PVector(0, -1);
  hourHand.mult(HOUR_RADIUS);
  
  
  minHand = new PVector(0, -1);
  minHand.mult(MIN_RADIUS);
  
  secHand = new PVector(0, -1);
  secHand.mult(SEC_RADIUS);

  frameRate(1);    // framerate = 1 frame per second

  hr = hour();
  mn = minute();
  sc = second();
  println("hr:mn:sc = " + hr + ":" + mn + ":" + sc);

  animation = new PImage[10];
}



void draw() {

  background(255, 255, 255);
  stroke(0, 0, 0);
  strokeWeight(2);
  circle(width/2, height/2, CLOCK_RADIUS*2);

  // get time
  hr = hour();
  mn = minute();
  sc = second();

  println("hr:mn:sc = " + hr + ":" + mn + ":" + sc);

  // set vector rotations
  PVector.fromAngle(radians(-90 + hr%12/12*360), hourHand);
  hourHand.mult(HOUR_RADIUS);
 
  stroke(0, 0, 0);
  strokeWeight(8);
  line(width/2, height/2, width/2+hourHand.x, height/2+hourHand.y);

  PVector.fromAngle(radians(-90 + float(mn)/60*360), minHand);
  minHand.mult(MIN_RADIUS);
  stroke(0, 0, 255);
  strokeWeight(4);
  line(width/2, height/2, width/2+minHand.x, height/2+minHand.y);

  PVector.fromAngle(radians(-90 + float(sc)/60*360), secHand);
  secHand.mult(SEC_RADIUS);
  stroke(255, 0, 0);
  strokeWeight(2);
  line(width/2, height/2, width/2+secHand.x, height/2+secHand.y);
}


void keyPressed() {
  println("hr:mn:sc = " + hr + ":" + mn + ":" + sc);

  if (key=='s') {
    // save frame
    if (animIdx<animation.length) {
      
      animation[animIdx] = createImage(width, height, RGB);     // create new PImage
      animation[animIdx].set(0, 0, get());
     
      saveFrame();
      animIdx++;
      
      println(animIdx);
    }
  }
  
  
  if (key=='p') {
    printArray(animation);
    
  }
  
  
}
