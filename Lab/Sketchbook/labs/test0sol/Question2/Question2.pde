// WITHOUT DOUBLES


// Return the sum of two 6-sided dice rolls, each in the range 1..6.
// However, if noDoubles is true, if the two dice show the same value,
// increment one die to the next value, wrapping around to 1 if its value was 6.

//    withoutDoubles(2, 3, true) → 5
//    withoutDoubles(3, 3, true) → 7
//    withoutDoubles(3, 3, false) → 6


int withoutDoubles(int die1, int die2, boolean noDoubles) {

  // COMPLETE THIS METHOD HERE
  
  if (noDoubles && die1==die2) {
    die1++;    // add 1 to any of the die, remember both are same 
    if (die1==7) die1=1;    // if die goes past 6 (i.e. ==7), then wrap back to 1
  }
  return die1+die2;  // return new sum

  
}



void setup() {

  //  DO NOT MODIFY THIS METHOD!!!  
  
  //   (running will show unit test results - look at output to check method is working)
  
 
  println("withoutDoubles(2, 3, true)   ->   exp: 5    act: " + withoutDoubles(2, 3, true));
  println("withoutDoubles(3, 3, true)   ->   exp: 7    act: " + withoutDoubles(3, 3, true));
  println("withoutDoubles(3, 3, false)  ->   exp: 6    act: " + withoutDoubles(3, 3, false));

  println("withoutDoubles(2, 3, false)  ->   exp: 5    act: " + withoutDoubles(2, 3, false));
  println("withoutDoubles(5, 4, true)   ->   exp: 9    act: " + withoutDoubles(5, 4, true));
  println("withoutDoubles(5, 4, false)  ->   exp: 9    act: " + withoutDoubles(5, 4, false));
  println("withoutDoubles(5, 5, true)   ->   exp: 11   act: " + withoutDoubles(5, 5, true));
  println("withoutDoubles(6, 6, true)   ->   exp: 7    act: " + withoutDoubles(6, 6, true));
  
}
