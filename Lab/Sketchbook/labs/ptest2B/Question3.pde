////////////////////////////////
// COMPLETE THIS METHOD ONLY!

void crossPattern(int size, int xVal, int oVal) {

  if (size%2==0)
    println("cross pattern cannot be shown");

  else {
    for (int i=0; i<size; i++) {
      for (int j=0; j<size; j++) {
         if (i==j || (i==size-1-j) ) 
           print(xVal + "  ");
         else
           print(oVal + "  ");
      }
      println();
    }
  }
  println();
}



void question3() {

  //DO NOT MODIFY THIS METHOD!!!!


  println("ARGS: size=5, xVal=1, oVal=0\n");
  crossPattern(5, 1, 0);

  println("ARGS: size=4, xVal=-11, oVal=44\n");
  crossPattern(4, -11, 44);

  println("ARGS: size=3, xVal=10, oVal=-5\n");
  crossPattern(3, 10, -5);
}
