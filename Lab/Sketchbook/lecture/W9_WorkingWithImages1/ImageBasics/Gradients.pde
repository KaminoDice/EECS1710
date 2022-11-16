

void createImageGradients() {
 
 
  PImage img1 = createImage(300,300, RGB);
  PImage img2 = createImage(300,300, RGB);
  PImage img3 = createImage(300,300, ARGB);
  
  // access and set pixels in img1 directly:
  for (int i=0; i<img1.width; i++) {
    for (int j=0; j<img1.height; j++) {
      
      img1.set(i, j, RED);
      img2.set(i, j, color(i,0,0));    // gradient
      
      img3.set(i, j, color(0,j,0,i));
      
      // Linear Interpolate between 2 colours
      // Here, i/img1.width used as a percentage change
      // As (i/img1.width) closer to 0, more of "from" colour
      // As (i/img1.width) closer to 1, more of "to" colour
      
      //int from = color(130,240,11);    
      //int to   = color(200,120,100); 
      //img3.set(i, j, lerpColor(from, to, float(i)/img1.width));
      
    }
    
  }
  
  
  // show image
  image(img1,0,0);
  image(img2,300,300);
  image(img3,150,150);
  

}

void createImageGradients2() {
 
 
  PImage img1 = createImage(300,300, RGB);
  PImage img2 = createImage(300,300, RGB);
  PImage img3 = createImage(300,300, ARGB);
  
  // access and set pixels in img1 directly:
  for (int i=0; i<img1.width; i++) {
    for (int j=0; j<img1.height; j++) {
      
      img1.set(i, j, RED);
      img2.set(i, j, color(i,0,0));    // gradient
      
      img3.set(i, j, color(0,j,0,i));
      
      // Linear Interpolate between 2 colours
      // Here, i/img1.width used as a percentage change
      // As (i/img1.width) closer to 0, more of "from" colour
      // As (i/img1.width) closer to 1, more of "to" colour
      
      //int from = color(130,240,11);    
      //int to   = color(200,120,100); 
      //img3.set(i, j, lerpColor(from, to, float(i)/img1.width));
      
    }
    
  }
  
  // show images
  image(img1,0,0);
  image(img2,300,300);
  image(img3,150,150);
  
  // get pixels array for entire app window
  
  loadPixels();
  for (int i=0; i<width; i++) {
    for (int j=0; j<height; j++) {
      
      int location = i + j*width;
      int pixelColor = pixels[location];
      
      float r = red(pixelColor);
      float g = green(pixelColor);
      float b = blue(pixelColor);
      
      pixels[location] = color(r/2,g/2,b/2);
      
    }
  }
  
  updatePixels();

}
