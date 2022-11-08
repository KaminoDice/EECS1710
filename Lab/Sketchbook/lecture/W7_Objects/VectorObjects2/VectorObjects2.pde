PVector v1, v2;   // declare

void setup() { 
  size(600,600);
  noLoop();         // force draw to run only once
  
  v1 = new PVector(100, 200);   // instantiate
  v2 = new PVector(350, 300);   // instantiate
} 

void draw() { 

  line(0,0,v1.x,v1.y);
  ellipse(v1.x, v1.y, 60, 60);    // use vectors to define each ellipse
  
  line(0,0,v2.x,v2.y);
  ellipse(v2.x, v2.y, 60, 60); 

  v2.add(v1); 
  ellipse(v2.x, v2.y, 120, 120);   // create bigger ellipse from others

} 
