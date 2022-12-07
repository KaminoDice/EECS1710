PShape alien, head, body;
PVector pos;
float angle;

void setup() {
  size(400, 400);

  // Create the shape group
  alien = createShape(GROUP);

  // Make two shapes
  ellipseMode(CORNER);
  head = createShape(ELLIPSE, -25, 0, 50, 50);
  head.setFill(color(255));
  body = createShape(RECT, -25, 45, 50, 40);
  body.setFill(color(0));

  // Add the two "child" shapes to the parent group
  alien.addChild(body);
  alien.addChild(head);
  
  // setup for animated movement of alien
  pos = new PVector(0,0);
  angle = 0.0;
}

void draw() {
  background(204);
  pos.add(1,1);
  angle++;
  
  translate(pos.x,pos.y);
  rotate(radians(angle));
  
  translate(50,50);
  shape(alien); // Draw the group

}
