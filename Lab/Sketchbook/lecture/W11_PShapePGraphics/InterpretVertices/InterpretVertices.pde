PShape s;

void setup() { 

  size(300, 300, P2D);
  s = createShape();
  
  s.beginShape(QUADS);
  //s.strokeWeight(20);
  s.vertex(60, 175);
  s.vertex(80, 20);
  s.vertex(100, 175);
  s.vertex(120, 20);
  s.vertex(140, 175);
  s.vertex(160, 20);
  s.vertex(180, 175);
  s.endShape();
}

void draw() {
  shape(s, 0, 0);
} 
  
