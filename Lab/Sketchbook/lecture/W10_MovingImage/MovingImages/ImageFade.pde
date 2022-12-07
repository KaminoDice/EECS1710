float fadeFactor;
float fadeValue = 255;

void imageFade(PImage img) {

  background(BLACK);

  rWidth = frameCount%FPS/FPS * orig.width;
  rHeight = frameCount%FPS/FPS * orig.height;
  
  if (fade) 
    fadeFactor = 0.95;
  else
    fadeFactor = 1.05;
  
  fadeValue *= fadeFactor;
  
  image(img, width/2, height/2);
  
  if (fadeValue<1) fadeValue=1;
  if (fadeValue>255) fadeValue=255;
  
  tint(fadeValue,fadeValue,fadeValue);
  
}
