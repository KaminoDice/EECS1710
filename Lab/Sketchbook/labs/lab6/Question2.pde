// Lab 6 - lab6.pde
// ======================================
// Student ID: 
// First Name:
// EECS User Name (not password):
// ======================================


// QUESTION2.PDE  <- radial gradient and vignette/mask

////////////
// RUBRIC  [ 15 marks ]
//



// CONSTANTS - colours used in lab document are included here..

final int COL1 = color(241, 12, 141, 255);     // pinkish 
final int COL2 = color(134, 222, 25, 255);     // greenish

final int BACKGROUND = color(128,128,128,255); // gray opaque
final int FOREGROUND = color(128,128,128,0);   // gray transparent


void question2() {

  // UNCOMMENT method call for each part below to run
  
  int size = 500;
  background(BACKGROUND);
  
  PImage orig = loadImage("lassonde.jpg");
  println("lassonde.jpg = " + orig.width + " x " + orig.height);


  // part (a) - generate radial gradient (as per lab document)
  // image(radialGradient(size, size, COL1, COL2), width/2, height/2 );
  
  
  // part (b) - apply radial vignette (as per lab document)
  // applyRadialVignette(orig, size);
  
  
  // ALTERNATIVE part (b) - create and apply a special mask of your own design
  // applySpecialMask(orig, size);
  
}



// PART A
PImage radialGradient(int sizeX, int sizeY,  int col1, int col2) {

  
  
  
  // METHOD TO COMPLETE
  
  
  
  return null;  // change this to return a new PImage object
  
}


// PART B
void applyRadialVignette(PImage orig, int size) {
  
  // METHOD TO COMPLETE
  
  
  
  
  
}




// OPTIONAL ALTERNATIVE FOR PART B

void applySpecialMask(PImage orig, int size) {
  
  
  // METHOD TO COMPLETE (OPTIONAL)
  
  
  
  
}
