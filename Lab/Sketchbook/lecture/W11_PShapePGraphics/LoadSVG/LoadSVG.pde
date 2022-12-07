// load svg


PShape svg; 

void setup() {
 size(640, 360, P2D); 
 svg = loadShape("retro-detective.svg"); 
 
 println("w,h = " + svg.width +", " + svg.height);
} 

void draw() { 
 background(255); 
 
 translate(mouseX, mouseY);
 shape(svg); 
}
