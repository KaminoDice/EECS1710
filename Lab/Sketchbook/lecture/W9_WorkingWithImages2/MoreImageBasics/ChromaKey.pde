


PImage blendImages(PImage img1, float p1, PImage img2, float p2) {
  
  PImage result = img1.copy();
  
  if (img1.width!=img2.width || img1.height!=img2.height)
    return null;
  
  for (int i=0; i<img1.width; i++) {
    for (int j=0; j<img1.height; j++) {
      
      int img1P = img1.get(i,j);
      int img2P = img2.get(i,j);
      
      float redP =   red(img1P)*p1 +   red(img2P)*p2;
      float greenP = green(img1P)*p1 + green(img2P)*p2;
      float blueP =  blue(img1P)*p1 +  blue(img2P)*p2;
      
      result.set(i,j,color(redP,greenP,blueP));
      
    }
  }
  
  return result;
  
}



PImage chromaKey(PImage imgB, PImage imgF) {
  
  PImage result = imgB.copy();
  
  if (imgB.width!=imgF.width || imgB.height!=imgF.height)
    return null;
  
  for (int i=0; i<imgB.width; i++) {
    for (int j=0; j<imgB.height; j++) {
      
      int imgBpix = imgB.get(i,j);
      int imgFpix = imgF.get(i,j);
      
      if (i<10 && j<10)
        println("(r,g,b) = " + red(imgFpix) + "," + green(imgFpix) + "," + blue(imgFpix));
      
      if (green(imgFpix) > red(imgFpix) + blue(imgFpix) )  {
        result.set(i,j,imgBpix); 
      }
      else {
        result.set(i,j,imgFpix);
      }
      
    }
  }
  
  return result;
  
}
