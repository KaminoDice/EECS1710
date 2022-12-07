PGraphics pg, pg2;

void setup() {
  size(400, 400, P2D);
  
   
  pg = createGraphics(200, 200, P2D);
  pg.beginDraw();
  pg.background(100,200,100);
  pg.stroke(255);
  pg.line(20, 120, 180, 180);
  pg.endDraw();
  
  pg2 = createGraphics(200, 200);
  
 
}

void draw() {
  pg2.beginDraw();
  pg2.background(102);
  pg2.stroke(255);
  pg2.line(pg.width*0.5, pg.height*0.5, mouseX, mouseY);
  pg2.endDraw();
  
  image(pg, 10, 100);
  image(pg2, 200, 100); 
}
