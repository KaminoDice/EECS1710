
public String repeatFront(String str, int n) {
  
  String result = "";
  
  for (int i=n; i>0; i--) {
    result += str.substring(0,i);
    
  }
  
  return result;
}



void question3() {
  
  //DO NOT MODIFY THIS METHOD!!!!
  
  println("\n\nQUESTION 3:\n"); 
  
  println("repeatFront(\"Chocolate\", 4) => exp: ChocChoChC     \t => act: " + repeatFront("Chocolate", 4));
  println("repeatFront(\"Chocolate\", 3) => exp: ChoChC         \t => act: " + repeatFront("Chocolate", 3));
  println("repeatFront(\"Ice Cream\", 2) => exp: IcI            \t => act: " + repeatFront("Ice Cream", 2));
  println("repeatFront(\"Ice Cream\", 1) => exp: I              \t => act: " + repeatFront("Ice Cream", 1));
  println("repeatFront(\"Ice Cream\", 0) => exp:                \t => act: " + repeatFront("Ice Cream", 0));
  println("repeatFront(\"xyz\",       3) => exp: xyzxyx         \t => act: " + repeatFront("xyz", 3));
  println("repeatFront(\"\",          0) => exp:                \t => act: " + repeatFront("", 0));
  println("repeatFront(\"Java\",      4) => exp: JavaJavJaJ     \t => act: " + repeatFront("Java", 4));
  println("repeatFront(\"Java\",      1) => exp: J              \t => act: " + repeatFront("Java", 1));
  
 
  
}
