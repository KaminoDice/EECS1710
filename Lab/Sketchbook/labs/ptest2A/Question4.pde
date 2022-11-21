// bisect a point between two points...

PVector findMidPoint(float x1, float y1, float x2, float y2) {
 
  PVector p1 = new PVector(x1,y1);
  PVector p2 = new PVector(x2,y2);
   
  PVector pMid = PVector.add(p1,p2);
  pMid.div(2);
  
  println("\n\nQUESTION 4:\n");
  
  println("Bisection of P1 and P2: ");
  println("------------------------");
  println("P1: " + p1);
  println("P2: " + p2);
  println("Angle between p1,p2 = " + degrees(PVector.angleBetween(p1,p2)));
  println("Midpoint = " + pMid);
  
  return pMid;
  
}

void question4() {

  PVector midpoint = findMidPoint(14.2, 5.234, -11.2, 9.53);
  
}
