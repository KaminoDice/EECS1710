

String[] cameras;

void cameraSetup() {

  // CAMERA CAPTURE SETUP
  cameras = Capture.list();
  if (cameras.length == 0) {
    println("there are no cameras available for capture");
    exit();
  } 
  else {
    println("Available cameras:");
    for (int i = 0; i < cameras.length; i++) {
      println(cameras[i]);
    }
  }

  // The camera can be initialized directly using an
  // element from the array returned by list():

  // normally you just need this line :
  //cam = new Capture(this, cameras[0]);

  // on apple silicon, there is a bug that is still not updated
  cam = new Capture(this, 640, 480, "pipeline:avfvideosrc device-index=0 ! video/x-raw, width=640, height=480, framerate=30/1");
  cam.start();
}


void showWebCamera() {

  background(BLACK);

  if (cam.available() == true) {
    cam.read();
  }
  cam.loadPixels();
  colorMode(RGB, 255, 255, 255, 100);
  
  image(cam, width/2, height/2);
  
  
}




void showWebCamera2() {

  background(BLACK);

  if (cam.available() == true) {
    cam.read();
  }
  cam.loadPixels();
  colorMode(RGB, 255, 255, 255, 100);
  

  // OR load pixels and process them here...  called every draw loop

  // example, draw some objects around the mouse

  int cellSize = 20;
 
  
  // Begin loop for columns
  for (int i = 0; i < cam.width/cellSize; i++) {
    for (int j = 0; j < cam.height/cellSize; j++) {

      // Where are we, pixel-wise?
      int x = i*cellSize;
      int y = j*cellSize;
      int loc = x + y*cam.width; 

      float r = red(cam.pixels[loc]);
      float g = green(cam.pixels[loc]);
      float b = blue(cam.pixels[loc]);
      
      // Make a new color with an alpha component
      color c = color(r, g, b, 75);

      ellipseMode(CENTER);
      fill(c);
      noStroke();
      ellipse(x+cellSize/2, y+cellSize/2, cellSize+6, cellSize+6);
      
      
    }
  }
  cam.updatePixels();
  
  
}
