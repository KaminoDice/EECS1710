

PImage tileMosaic(PImage original, int numSteps) {
 
  PImage result = createImage(original.width, original.height, RGB);
  int tileW = original.width/numSteps;
  int tileH = original.height/numSteps;
  
  println("Original -> width=" + original.width + ", height=" + original.height);
  println("Result -> width=" + result.width + ", height=" + result.height);
  println("       -> tileW=" + tileW + ", height=" + tileH);
  

  PImage tile = original.copy();
  tile.resize(tileW,tileH);
  println("tile -> width=" + tile.width + ", height=" + tile.height);
  
  for (int i=0; i<numSteps; i++) {
    for (int j=0; j<numSteps; j++) {
      
      println("start loc: (" + i*tileW + ", " + j*tileH + ")");
      result.set(i*tileW, j*tileH, tile);
      
    }
  }

  return result;
  
}
