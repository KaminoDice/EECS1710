
final int BLACK = color(0,0,0);
final int RED = color(255,0,0);
final int BLUE = color(0,255,0);
final int GREEN = color(0,0,255);

void traverseGenerateDisplay() {
 
  //PImage img1 = createImage(300,300, RGB);
  PImage img1 = createImage(300,300, ARGB);
  //PImage img1 = createImage(200,200, ALPHA);
  
  
  // access and set pixels in img1 directly:
  for (int i=0; i<img1.width; i++) {
    for (int j=0; j<img1.height; j++) {
      
      int pixel = img1.get(i,j);
      if (i<=10 && j==0) 
        print("pixel (" + i + ", " + j + ")=" + pixel + " ");
        
      img1.set(i, j, RED);
        
      pixel = img1.get(i,j);
      if (i<=10 && j==0) 
        print(" -> pixel (" + i + ", " + j + ")=" + pixel + " ");
    }
    if (i<=10) 
      println();
  }
  
  
  // show image
  image(img1,0,0);
  
  int pixel = img1.get(0,0);
  println("\n\npixel: (" + pixel + ") -> ");
  println(" (r) = " + red(pixel)  );     //   + " = "   + ( (pixel>>16) & 0xFF) );
  println(" (g) = " + green(pixel) );    //  + " = " + ( (pixel>>8)  & 0xFF) );
  println(" (b) = " + blue(pixel)  );    //   + " = "  + ( (pixel>>0)  & 0xFF) );
}
