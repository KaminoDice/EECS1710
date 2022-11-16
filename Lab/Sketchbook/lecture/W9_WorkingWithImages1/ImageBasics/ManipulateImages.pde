



void manipulateImages() {

  myImage1 = loadImage("lassonde.jpg");

  for (int i=0; i<myImage1.width; i++) {
    for (int j=0; j<myImage1.height; j++) {

      if (i<myImage1.width/2) {
        float red = red(myImage1.get(i, j));
        float green = green(myImage1.get(i, j));
        float blue = blue(myImage1.get(i, j));

        // gives a tint to left half of image pixels -> note there is a method that does this
        // but if you want something custom, do it yourself!
        myImage1.set(i, j,
          color(red/2, green/2, blue/2, i) );

        //myImage1.set(i, j,
        //  color(red, green/2, blue/2, i) );
      }
    }
  }


  imageMode(CENTER);
  image(myImage1, width/2, height/2);
}


void manipulateImages2() {

  myImage1 = loadImage("lassonde.jpg");
  myImage1.loadPixels();

  for (int i=0; i<myImage1.width; i++) {
    for (int j=0; j<myImage1.height; j++) {
      
      int location = i + j*myImage1.width;

      if (i<myImage1.width/2) {
        float red = red(myImage1.pixels[location]);
        float green = green(myImage1.pixels[location]);
        float blue = blue(myImage1.pixels[location]);

        // gives a tint to left half of image pixels -> note there is a method that does this
        // but if you want something custom, do it yourself!
        myImage1.pixels[location] = color(red/2, green/2, blue/2, i) ;

        
      }
    }
  }
  myImage1.updatePixels();

  imageMode(CENTER);
  image(myImage1, width/2, height/2);
}
