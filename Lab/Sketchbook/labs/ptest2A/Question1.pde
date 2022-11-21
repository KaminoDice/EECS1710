
////////////////////////////////
// COMPLETE THIS METHOD ONLY!

void cubicRootsTable() {

  println("======================");
  println("n    \tn^3  \tn^1/3");
  println("======================");
  
  for (int n=1; n<=10; n++) {
    println(n + "\t" + floor(pow(n,3)) + "\t" + nf(pow(n,1.0/3),0,5));   
  }
  
  println("======================");
  
}
/////////////////////////////




////////////////////////////////
// DO NOT EDIT THE METHOD BELOW!
//
void question1() {
  

  // DO NOT MODIFY THIS METHOD - only complete cubicRootsTable() method above to create the roots table 
  // as described in the test webpage
  
  println("\n\nQUESTION 1:\n");
  cubicRootsTable();
  
  
}
