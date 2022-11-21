

PImage cropImage(PImage orig, PVector maskStart, PVector maskFinish) {
  
  
  PImage result = orig.get(   int(maskStart.x), 
                              int(maskStart.y),
                              int(maskFinish.x-maskStart.x), 
                              int(maskFinish.y-maskStart.y)  );

  return result;
  
}
