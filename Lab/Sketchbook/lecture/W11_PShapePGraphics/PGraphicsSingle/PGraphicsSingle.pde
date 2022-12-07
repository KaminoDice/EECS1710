PGraphics pg;

void setup() {
  size(400, 400, P2D);
  pg = createGraphics(200, 200, P2D);
  pg.beginDraw();
  pg.background(102);
  pg.stroke(255);
  pg.line(20, 120, 180, 180);
  pg.endDraw();
  noLoop();
}

void draw() {
  image(pg, 10, 10); 
}
