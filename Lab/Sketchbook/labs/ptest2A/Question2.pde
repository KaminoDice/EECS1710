
////////////////////////////////
// COMPLETE THIS METHOD ONLY!

int[] maxFirstLast( int[] inputArray ) {


  int[] outputArray = new int[inputArray.length];

  int first = inputArray[0];
  int last = inputArray[inputArray.length-1];
  int newVal = (first>last) ? first : last;
  
  for (int i=0; i<outputArray.length; i++) {
    outputArray[i] = newVal;
  }
  
  return outputArray;
  
}
/////////////////////////////




////////////////////////////////
// DO NOT EDIT THE METHOD BELOW!
//
void question2() {
  
  // this method runs and outputs tests for the method maxFirstLast()
  // DO NOT MODIFY THIS METHOD - only complete maxFirstLast() method
  IntList numsExp = new IntList();
  IntList numsAct = new IntList();
  
  int[] a1 = {1,2,3};
  int[] a2 = {11, 5, 9, 5, 12, 13, 8};
  int[] a3 = {2, 11, 3};
  int[] a4 = {-5, 2};
  int[] a5 = {-5, 2, 4, 1, 0};
  
  println("\n\nQUESTION 2:\n");
  
  numsExp.append(a1); numsAct.append(maxFirstLast(a1));
  println("exp => IntList size=3 [ 3, 3, 3 ]                      \t act => " + numsAct );
  numsExp.clear(); numsAct.clear();
  
  numsExp.append(a2); numsAct.append(maxFirstLast(a2));
  println("exp => IntList size=7 [ 11, 11, 11, 11, 11, 11, 11 ]   \t act => " + numsAct );
  numsExp.clear(); numsAct.clear();
  
  numsExp.append(a3); numsAct.append(maxFirstLast(a3));
  println("exp => IntList size=3 [ 3, 3, 3 ]                       \t act => " + numsAct );
  numsExp.clear(); numsAct.clear();
  
  numsExp.append(a4); numsAct.append(maxFirstLast(a4));
  println("exp => IntList size=2 [ 2, 2 ]                           \t act => " + numsAct );
  numsExp.clear(); numsAct.clear();
  
  numsExp.append(a5); numsAct.append(maxFirstLast(a5));
  println("exp => IntList size=5 [ 0, 0, 0, 0, 0 ]                  \t act => " + numsAct );
  numsExp.clear(); numsAct.clear();
  
}
