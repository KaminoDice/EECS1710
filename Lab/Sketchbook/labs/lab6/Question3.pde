// Lab 6 - lab6.pde
// ======================================
// Student ID: 
// First Name:
// EECS User Name (not password):
// ======================================


// QUESTION3.PDE  <- instagram filters (sepia and edge)

////////////
// RUBRIC  [ 20 marks ]
//


void question3() {
  
  // UNCOMMENT/COMMENT method calls or input image as needed to test methods

  //PImage orig = loadImage("temple.jpg");
  //println("temple.jpg -> " + orig.width + " x " + orig.height);
  
  PImage orig = loadImage("yogaBike.jpg");
  println("yogaBike.jpg -> " + orig.width + " x " + orig.height);
  
  
  imageMode(CORNER);
  image(orig, 0, 0);
  
  //image(sepiaImage(orig), 0, orig.height);
  //image(edgeImage(orig,22), 0, orig.height*2);
  
  
}



PImage sepiaImage(PImage image) {

  
  // METHOD TO COMPLETE
  
  
  
  
  
  
  return null;  // change this to return a new PImage object
  
}



PImage edgeImage(PImage image, int thresh) {

 
  // METHOD TO COMPLETE
  
  
  
  
  
  
  return null;  // change this to return a new PImage object
}
