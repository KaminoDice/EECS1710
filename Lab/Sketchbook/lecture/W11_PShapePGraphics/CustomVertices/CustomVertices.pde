PShape star;
ArrayList<PShape> starField;
boolean wiggle = false;

void setup() {
  size(640, 360, P2D);
  starField = new ArrayList<PShape>();

  // First create the shape
  star = createShape();
  star.beginShape();
  // You can set fill and stroke
  star.fill(102);  
  star.stroke(255);
  star.strokeWeight(2);
  // Here, we are hardcoding a series of vertices
  star.vertex(0, -50);
  star.vertex(14, -20);
  star.vertex(47, -15);
  star.vertex(23, 7);
  star.vertex(29, 40);
  star.vertex(0, 25);
  star.vertex(-29, 40);
  star.vertex(-23, 7);
  star.vertex(-47, -15);
  star.vertex(-14, -20);
  star.endShape(CLOSE);
  star.noFill();
}

void draw() {
  background(51);
  translate(mouseX, mouseY);
  

  if (wiggle) {
    PShape s = star;
    for (int i = 0; i < s.getVertexCount(); i++) {
      PVector v = s.getVertex(i);
      v.x += random(-1, 1);
      v.y += random(-1, 1);
      s.setVertex(i, v.x, v.y);
    }
  }

  shape(star);
}


void mousePressed() {

  println(mouseButton);

  if (mouseButton==37)
    star.scale(1.1);

  if (mouseButton==39)
    star.scale(0.9);
}

void keyPressed() {

  if (key=='w') {
    wiggle = !wiggle;
  }
}
