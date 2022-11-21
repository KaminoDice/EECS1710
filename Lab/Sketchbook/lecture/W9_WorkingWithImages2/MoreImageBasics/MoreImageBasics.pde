final int PINKISH = color(241, 12, 141, 255);     // pinkish
final int GREENISH = color(134, 222, 25, 255);     // greenish


boolean showMask = true;
PVector maskStart;
PVector maskFinish;

PImage originalImg;
PImage processedImg;

void setup() {
  size(600, 900);

  originalImg = loadImage("temple.jpg");
  println("orig = " + originalImg.width + " x " + originalImg.height);


  //////////////////////
  // checkerboard
  int numSteps = 4;
  PImage board = checkerboard(originalImg.width, originalImg.height,numSteps, numSteps,PINKISH, GREENISH);
  processedImg = board;

  //////////////////////
  // flip image
  //PImage flipH = flipImage(originalImg, "HORIZONTAL");
  //processedImg = flipH;

  //////////////////////
  //PImage flipV = flipImage(originalImg, "VERTICAL");
  //processedImg = flipV;
  
  //////////////////////
  // crop image (see mousePressed and keyPressed, mouse to select, 'c' to crop)
  //processedImg = originalImg.copy();

  //////////////////////
  //// tile mosaic
  //int numSteps = 3;
  //PImage tiled = tileMosaic(originalImg, numSteps);
  //processedImg = tiled;

  //////////////////////
  //// swap segment
  //int numSteps = 3;
  //PImage swapped = swapTiles(originalImg, numSteps);
  //processedImg = swapped;

  //////////////////////
  // Blend images
  //originalImg = loadImage("field.jpg");
  //processedImg = loadImage("alienChromaKey.jpg");
  //processedImg = blendImages(originalImg, 0.5, processedImg, 0.5);

  //////////////////////
  //// ChromaKey images
  //originalImg = loadImage("field.jpg");
  //processedImg = loadImage("alienChromaKey.jpg");
  //processedImg = chromaKey(originalImg, processedImg);
}

void draw() {

  background(0, 0, 0);
  image(originalImg, 0, 0);
  image(processedImg, 0, originalImg.height);

  if (showMask && maskStart!=null && maskFinish!=null) {
    fill(255, 0, 0, 100);
    rect(maskStart.x, maskStart.y,
      maskFinish.x-maskStart.x,
      maskFinish.y-maskStart.y);
  }
}

void keyPressed() {

  switch(key) {
    
  case 'c':
    if (showMask) {
      println("cropping now");
      processedImg = cropImage(originalImg, maskStart, maskFinish);
    }
    showMask=false;
    break;
  }
}


void mousePressed() {
  maskStart = new PVector(mouseX, mouseY);
  maskFinish = null;
  showMask = true;
}

void mouseDragged() {
  fill(255, 0, 0, 100);
  rect(maskStart.x, maskStart.y, mouseX-maskStart.x, mouseY-maskStart.y);
}

void mouseReleased() {
  maskFinish = new PVector(mouseX, mouseY);
}
