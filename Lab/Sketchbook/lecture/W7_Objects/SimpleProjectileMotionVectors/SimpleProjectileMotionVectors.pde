// SimpleProjectileMotionVectors.pde
//
// A simple example of projectile motion with some initial parameters
//   - circle launched at 45deg into the air, and drops toward "ground"
//   - a mouse click will reset time to t=0

final float GRAVITY = 9.8f;    // 9.8 m/s (in the direction of ground +y)

float mag = sqrt(2*pow(50, 2));
PVector v0;  // start position
PVector v1;  // launch vector

// +theta when rotating from +x to +y
// -theta when rotating from +x to -y
// we use angle in degrees and convert to radians
// because sin() and cos() methods expect radians
float theta = radians(-45);

// initial time = 0 sec
float t  = 0f;

void setup() {
  size(800, 800);

  v0 = new PVector(100f, 400f);
  println(v0);
  v1 = new PVector(50f, -50f);
  println(v1);
}


void draw() {
  // repaint (clear) the screen to white
  background(255, 255, 255);

  // update time step (increase by 0.05 seconds per frame)
  t+= 0.05;

  // Move Projectile (v0,theta,t)  <- need these parameters
  // NOTE: calc. x,y at every draw (dont need to remember)

  float x = v0.x + v1.x*t ;                          // calc. new x
  float y = v0.y + v1.y*t + 0.5*GRAVITY*pow(t, 2) ; // calc. new y

  // show component terms for each calculation
  // println("x = " + nf(x, 3, 3) + ", y = " + nf(y, 3, 3));

  line(v0.x, v0.y, v0.x+v1.x, v0.y+v1.y);  // draw vo at start point (launch vector)
  circle(x, y, 20);                        // draw object (circle) at new x,y
}

void mousePressed() {
  // reposition start time, use all same initial values
  t=0;
}
