// Working with Images 1

// Basic Usage of PImage objects

PImage myImage1, myImage2;      // declare multiple objects of same type;
int fillImage1, fillImage2;

void setup() {
  size(600, 600);
  
  // UNCOMMENT AND RUN EACH OF THE FOLLOWING SEPARATELY TO EXPLORE
  
  // Load & Display Images (from files)
  loadAndDisplay();
  
  // Create Empty Images (and set pixels)
  //traverseGenerateDisplay();
  
  // Create Image Gradients
  //createImageGradients();
  //createImageGradients2();
  
  // Manipulate pixels from a loaded image
  //manipulateImages();
  //manipulateImages2();
  

}


void draw() {
  
}




void mousePressed() {

  fillImage1 = myImage1.get(mouseX,mouseY);
  fillImage2  =myImage2.get(mouseX,mouseY);
  updatePixels();

}
