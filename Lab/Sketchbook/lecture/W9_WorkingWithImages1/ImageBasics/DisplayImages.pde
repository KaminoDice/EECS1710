
void loadAndDisplay() {

  myImage1 = loadImage("lassonde.jpg");


  imageMode(CORNER);
  image(myImage1, 0, 0);

  //imageMode(CENTER);
  //image(myImage1, width/2, height/2);

  //imageMode(CENTER);
  //image(myImage1, width/2, height/2,
  //  myImage1.width/2, myImage1.height/2);
}
