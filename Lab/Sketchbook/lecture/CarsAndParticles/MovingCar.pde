class MovingCar {
  
  // data fields
  color c;
  float xpos;
  float ypos;
  float xspeed;

  // constructor(s) - note... no return types!! 
  
  // a default constructor (no parameters, uses default settings)
  MovingCar() {
    c = color(128,128,128);    // grey car
    xpos = 0;
    ypos = height/2;
    xspeed = 1;
    
  }
  
  // a custom constructor (uses parameters)
  MovingCar(color tempC, float tempXpos, float tempYpos, float tempXspeed) {
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    xspeed = tempXspeed;
  }

  void display() {
    stroke(0);
    fill(c);
    rectMode(CENTER);
    rect(xpos,ypos,40,20);
  }

  void move() {
    xpos = xpos + xspeed;
    if (xpos > width) {
      xpos = 0;
    }
    if (xpos < 0) {
      xpos = width;
    }
    
  }
}
