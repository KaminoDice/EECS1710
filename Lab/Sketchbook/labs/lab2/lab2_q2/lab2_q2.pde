// ======================================
// Lab 2
// Question 2 - Background/Foreground scene 
//              render using parametrized objects
// ======================================
// Student ID: 
// First Name:
// EECS User Name (not password):
// ======================================

final int NUM_OBJECTS = 4;      // variables to track num objects to draw
int numObjectsLeft;

// PLEASE MAKE SURE YOU HAVE READ THE LAB2.PDF DOCUMENT!!
// INSTRUCTIONS ARE THERE!!


// (a)
// copy the parametrized version of your renderObject()
// method over from question 1 (or create a new method
// that parametrizes the rendering of a new object)
//
// create two methods ->
//
// renderBackground():
//  - that renders a static background scene (as described in lab2.pdf)
//
// renderForeground():
//  - that generates and renders NUM_OBJECTS x your parametrized object.
//  - each object should be rendered to a randomized location and size
//    within an area of the scene that makes sense. E.g. generating bikes
//    on the trail/path in the scene depicted in lab2.pdf.





void renderBackground() {
  textSize( height/10);
  fill( 215 ,89 ,29,255 );    
  text("Stickman Boxing", width/10, height/10);
  fill( 255 ,18 ,15,255 );
  quad( 0 ,height,width ,height ,width/5 ,height/3,4*width/5 ,height/3 );
  // CODE TO RENDER BACKGROUND SCENE ELEMENTS HERE
  
  
  
}

void renderForeground(float x, float y, int radius) {
  circle(x, y, radius*2.2);
  triangle( x-radius ,y+radius*1.2,x+radius ,y+radius*1.2 ,x ,y+4*radius );
  circle( x- radius*1.5 ,y+ radius*2,radius );
  circle( x+ radius*1.5 ,y+ radius*2,radius );
  triangle( x-radius/4 ,y+4*radius,x- radius ,y+4*radius ,x-(radius+5)/2 ,y+4*radius-5 );
  triangle( x+radius/4 ,y+4*radius,x+ radius ,y+4*radius ,x+(radius+5)/2 ,y+4*radius-5 );
}  
  // CODE TO RENDER ONE FOREGROUND OBJECT HERE
  // (uses parametrized method to draw stick figure/ 
  //  object from question 1)
  
  



void setup() {
  size(800,800);
  background(255);
  renderBackground();
  // CODE TO SETUP PROGRAM HERE

}

void draw() {    

  //renderForeground();
  // CODE TO DECIDE IF WE DRAW A FOREGROUND OBJECT
  // and to decrement num objects left to draw
  
}

void mousePressed() {  

  // CODE TO CLEAR FOREGROUND (repaint background)
  // and reset num of objects to draw in foreground
}
