


PVector[] makeParallelogram(float x1, float y1, float x2, float y2) {

  PVector[] parallelogram = new PVector[4];
  
  PVector p1 = new PVector(x1,y1);
  PVector p2 = new PVector(x2,y2);
  
  PVector p3 = PVector.add(p1,p2);
  PVector p21 = PVector.sub(p2,p1);
  PVector p4 = PVector.add(p3,p21);
  
  parallelogram[0] = p1;
  parallelogram[1] = p2;
  parallelogram[2] = p3;
  parallelogram[3] = p4;
  
  println("Forming a parallelogram from P1,P2:");
  println("-----------------------------------");
  println("Parallelogram:");
  println("  p1: " + p1);
  println("  p2: " + p2);
  println("  p3: " + p3);
  println("  p4: " + p4);

  
  return parallelogram;  
}







void question4() {

  // DO NOT MODIFY THIS METHOD!!
  
  PVector[] parallelogram = makeParallelogram(14.2, 5.234, -11.2, 9.53);
  
}
