

PImage imageNoise(PImage img, float amp) {

  background(BLACK);
  PImage result = img.copy();
 
  img.loadPixels();
  result.loadPixels();
  
  for (int i=0; i<result.pixels.length; i++) {
    result.pixels[i] = img.pixels[i]+ color(random(amp),random(amp),random(amp)); 
  }
  result.updatePixels();
  
  image(result, width/2, height/2);
  
  return result;
  
  
}
