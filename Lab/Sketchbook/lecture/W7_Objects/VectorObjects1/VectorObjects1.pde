final int WHITE = color(255,255,255);
final int GREEN = color(0,255,0);
final int PURPLE = color(255,0,255);

PVector v1;
PVector v2;

void setup() {

  size(600, 600);
  background(0,0,0);
  
  translate(width/2, height/2);
  
  v1 = new PVector(150, 150);
  v2 = new PVector(300, 80);

  stroke(GREEN);
  line(0, 0, v1.x, v1.y);
 
  stroke(PURPLE);
  line(0, 0, v2.x, v2.y);

  PVector v3 = v2.sub(v1);
  stroke(WHITE);
  line(0,0, v3.x, v3.y);
  
  
  
  
  println(v1);
  println(v3);
  
  
  
  //v1 = null;
  //println(v1);
  
  //stroke(WHITE);
  //line(0,0,v3.x,v3.y);
  
  //PVector v4 = v1.sub(v2);
  //stroke(WHITE);
  //line(0,0,v4.x,v4.y);
  
  //// cant see it! (shift origin to centre)
  //translate(width/2, height/2);
  //// now redraw v4
  //line(0,0,v4.x,v4.y);

}
