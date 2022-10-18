// Lab 3
// Question 3 - simple drawing app with various features
// ======================================
// Student ID: 
// First Name:
// EECS User Name (not password):
// ======================================


// [ 12 marks ]

// additional constants that could be useful (you can add as needed)
final int WHITE = color(255, 255, 255);
final int BLACK = color(0, 0, 0);
final int RED   = color(255,0,0);
final int SHADOW = color(144);

// variables (again add as needed)
boolean isDrawing = false;
boolean isMirrored = false;
boolean standardPen = true;
int penSize = 5;
int pX,pY,mx,my;

void setup() {
  size(600, 600);
  clearDrawArea();
  println("type 'h' at any time for help\n");
  statusBar();
}

void statusBar(){
  noStroke();
  fill(RED);
  rect(0,560,600,600);
  fill(WHITE);
  textSize(20);
  textAlign(LEFT, BOTTOM);
  String infoStr = "|PenSize: " + penSize + "|Position: " + mx +","+ my;
  text(infoStr, 320,590);
  textAlign(LEFT, BOTTOM);
  if (standardPen){
    text(" standard pen: ON", 10,590);
  }else{
    text(" standard pen:OFF", 10,590);
  }
  textAlign(CENTER, BOTTOM);
  if (isMirrored){
    text("|mirror mode: ON", 240,590);
  }else{
    text("|mirror mode:OFF", 240,590);
  }
  textAlign(RIGHT, BOTTOM);
  if (isDrawing){
    text("[O]",600,590);
  }else{
    text("[--]",600,590);
  }
}


void showMenu() {
  // copy over from question 2
  println("Drawing Instructions");
  println("============================");
  println("Click and hold mouse button down to draw in window");
  println("Release mouse button to stop drawing" );
  println("press 'c' to  clear the drawing" );
  println("press 'm' to toggle mirrored mode");
  println("press 'h' to show this message" );
}

void clearDrawArea() {
  // TO DO
  background(SHADOW);
  fill(WHITE);
  noStroke();
  rect( 20, 20, 560, 500, 5);
  fill(0);
}



void draw() {
   // TO DO (i.e. you need to do something if isDrawing flag is true)
  pX = constrain(pmouseX, 20+penSize/2, 580-penSize/2);
  pY = constrain(pmouseY, 20+penSize/2, 520-penSize/2);
  mx = constrain(mouseX, 20+penSize/2, 580-penSize/2);
  my = constrain(mouseY, 20+penSize/2, 520-penSize/2);
  statusBar();
  //if (isDrawing && mouseX<580-penSize/2 && mouseX >20+penSize/2 && mouseY<520-penSize/2 && mouseY>20+penSize/2){
  if (isDrawing){
    if(standardPen){
      stroke( BLACK );
    } else{
      stroke ( RED );
    }
    strokeWeight(penSize);
    if(isMirrored){
      line(pX, pY, mx , my);
      stroke(SHADOW);
      line(580-penSize/2-pX , pY,580-penSize/2-mx, my);
    }else{
      line(pX, pY, mx , my);
    }
  }
}


void mousePressed() {
  // copy over and modify from question 2
  println("drawing mode is ON");
  isDrawing = true;
  // println("button = " + mouseButton );
  if (mouseButton == 39 && standardPen){
    standardPen = false;
    println("standardPen is OFF");
  }else if(mouseButton == 39 && !standardPen){
    standardPen = true;
    println("standardPen is ON");
  }
}

void mouseReleased() {
  // copy over and modify from question 2
  println("drawing mode is OFF");
  isDrawing = false;
}

void keyPressed() {
  // copy over and modify from question 2
  if ((key == 'm' || key == 'M') && !isMirrored) {
    println("mirror mode is ON");
    isMirrored = true;
  } else if ((key == 'm' || key == 'M') && isMirrored) {
    println("mirror mode is OFF");
    isMirrored = false;
  } else if (key == 'c' || key == 'C'){
    println("clearing draw area" );
    clearDrawArea();
  } else if (key == 'h' || key == 'H'){
    showMenu();
  } else if (key == '+' && penSize<100){
    penSize++;
  } else if (key == '-' && penSize>0){
    penSize--;
  }
}
