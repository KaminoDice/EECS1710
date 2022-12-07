final float GRAVITY = 9.8;
final float DT = 0.1;

class Particle {
 
  PVector pos;
  PVector vel;
  
  color col;
  float radius;
  
  Particle(float x, float y, float dx, 
            float dy, color c, float r) {
   
    pos = new PVector(x,y);
    vel = new PVector(dx,dy);
    col = c;
    radius = r;
    
  }
  
  
  void display() {
    fill(col);
    ellipseMode(RADIUS);
    circle(pos.x, pos.y, radius);
    stroke(0,0,0);
  }
  
  void move() {
    pos.x = pos.x + vel.x*DT;
    pos.y = pos.y + vel.y*DT;
    
    vel.y = vel.y + 0.5*GRAVITY*DT*DT;  // includes acceleration term
  }
  
}
