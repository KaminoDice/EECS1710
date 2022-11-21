
PImage swapTiles(PImage original, int numSteps) {
  
  int tileW = original.width/numSteps;
  int tileH = original.height/numSteps;
  
  PImage result = original.copy();
  
  // pick random index on numSteps grid (both horizontal and vertical)

  int iSrcTile = floor(random(numSteps));      // possible src and dest is same..
  int jSrcTile = floor(random(numSteps));
  int iDstTile   = floor(random(numSteps));
  int jDstTile   = floor(random(numSteps));
  
  println("moving tile(" + iSrcTile + "," + jSrcTile + ") -> tile(" + iDstTile + "," + jDstTile + ")");
  
  // save dstTile in temp image
  PImage tempTile = createImage(tileW,tileH,RGB);
  tempTile.set( 0, 0, result.get(iDstTile*tileW, jDstTile*tileH, tileW, tileH) );
  
  //image(original,width/2,height/2);
  
  
  // copy srcTile into dstTile location
  result.set(iDstTile*tileW, jDstTile*tileH, original.get(iSrcTile*tileW, jSrcTile*tileH, tileW, tileH) );
   
  // copy temp image (i.e. original dstTile) into srcTile location 
  result.set(iSrcTile*tileW, jSrcTile*tileH, tempTile );
  

  return result;

}
