

PImage imageWarp(PImage img, float ampX, float ampY) {

  background(BLACK);
  PImage result = img.copy();

  img.loadPixels();
  result.loadPixels();

  for (int i=0; i<result.width; i++) {
    for (int j=0; j<result.height; j++) {

      int loc = i + j*result.width;
      int offsetX = (int)(ampX * sin(PI*i/150.0));
      int offsetY = (int)(ampY * sin(PI*j/150.0));

      if ( ((i+offsetX)>=0) && ((i+offsetX)<result.width) ) {
        int loc2 = i+offsetX + j*result.width;

        result.pixels[loc] = img.pixels[loc2];
      } else {
        result.pixels[loc] = color(0, 0, 0);
      }
    }
  }

  //img = result.copy();
  //for (int i=0; i<result.width; i++) {
  //  for (int j=0; j<result.height; j++) {

  //    int loc = i + j*result.width;
  //    int offsetY = (int)(ampY * sin(PI*j/150.0));

  //    if ( ((j+offsetY)>=0) && ((j+offsetY)<result.height) ) {
  //      int loc2 = i + (j+offsetY)*result.width;

  //      result.pixels[loc] = img.pixels[loc2];
  //    } else {
  //      result.pixels[loc] = color(0, 0, 0);
  //    }
  //  }
  //}

  result.updatePixels();

  image(result, width/2, height/2);
  return result;
}
