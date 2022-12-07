PShape square, oval, arc, triangle;
ArrayList<PShape> shapes = new ArrayList<PShape>();

void setup() {
  size(400,400);
  
  square = createShape(RECT,10,300,50,50);
  square.setFill(color(0, 0, 255)); 
  square.setStroke(false); 
  shapes.add(square);
  
  oval = createShape(ELLIPSE,200,100,80,40);
  oval.stroke(color(0,255,0));
  shapes.add(oval);
  
  arc = createShape(ARC,50, 55, 50, 50, 0, HALF_PI);
  arc.setFill(color(255,0,0));
  arc.stroke(color(0,0,0));
  arc.setStroke(true);
  shapes.add(arc);
  
  triangle = createShape(TRIANGLE,300, 300, 332, 80, 344, 300);
  triangle.setFill(color(128,128,128));
  triangle.setStroke(false);
  shapes.add(triangle);
  
}


void draw() {
  background(255,255,255);
  for (int i=0; i<shapes.size(); i++) {    // special version of loop on a collection
    shape(shapes.get(i));
  }
}
