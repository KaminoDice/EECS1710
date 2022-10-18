// Lab 3
// Question 2 - printing messages & toggling flags on key/mouse press
// ======================================
// Student ID: 
// First Name:
// EECS User Name (not password):
// ======================================


// [ 12 marks ]

// variables you may/may not need
boolean isDrawing = false;
boolean isMirrored = false;
boolean standardPen = true;

void setup() {
  size(600, 600);
  background(255, 255, 255);
  println("type 'h' at any time for help\n");
  showMenu();
  
}

void showMenu() {
 // COMPLETE THIS METHOD
 println("Drawing Instructions");
 println("============================");
 println("Click and hold mouse button down to draw in window");
 println("Release mouse button to stop drawing" );
 println("press 'c' to  clear the drawing" );
 println("press 'm' to toggle mirrored mode");
 println("press 'h' to show this message" );

}

void draw() { 
  // NOT REQUIRED FOR QUESTION 2
  
}


void mousePressed() {
  // TO DO
  println("drawing mode is ON");
  println("button = " + mouseButton );
  if (mouseButton == 39 && standardPen){
    standardPen = false;
    println("standardPen is OFF");
  }else if(mouseButton == 39 && !standardPen){
    standardPen = true;
    println("standardPen is ON");
  }
}

void mouseReleased() {
  // TO DO
  println("drawing mode is OFF");
}

void keyPressed() {
  // TO DO
  if (key == 'm' || key == 'M') {
    println("mirror mode is ON");
  } else if (key == 'c' || key == 'C'){
    println("clearing draw area" );
  } else if (key == 'h' || key == 'H'){
    showMenu();
  }
}
