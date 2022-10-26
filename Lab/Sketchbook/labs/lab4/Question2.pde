// Lab 4 - Question2.pde
// ======================================
// Student ID: 
// First Name:
// EECS User Name (not password):
// ======================================

// NOTE: You are NOT permitted to use ArrayList or IntList or anything other than primitive arrays for all parts of this question

// Question 2:  

void question2() {
  
  // DO NOT MODIFY THIS METHOD (EXCEPT FOR COMMENTING OUT METHOD CALLS TO TEST INDIVIDUALLY)

  final int NUM_ELEMENTS = 15; 
  int[] intSamples = {154, 12, 48, 174, 85, 251, 114, 164, 135, 88, 297, 9,  51, 95, 241};

  // RUNNING THESE SHOULD OUTPUT THE EXAMPLES SHOWN IN THE LAB DOCUMENT (comment out or change to test individual methods)
  
  showArray("intSamples", intSamples);
  
  //println("=> average of intSamples = " + nf(average(intSamples),2,3));
  //println("=> range of intSamples = " + range(intSamples));
  //println("=> sum of intSamples within (110,200) = " + sumValuesInRange(110,200,intSamples) );
  //println("=> sum of intSamples within (50,150) = " + sumValuesInRange(50,150,intSamples) );
  
  //int[] intSamplesShuffled = shuffleElements(intSamples);
  //showArray("intSamplesShuffled", intSamplesShuffled);
  
}


// 1) SHOW ARRAY

void showArray(String arrayName, int[] array) {
 
  
  // TO COMPLETE
  
  
  
}


// 2) FIND AVERAGE VALUE 

float average(int[] myA) {

  // TO COMPLETE
  
  
  
  return 0.0;  // change this
}


// 3) FIND RANGE (Max-Min value)

int range(int[] myA) {

  // TO COMPLETE
  
  
  
  
 return 0;  // change this
}


// 4) SUM VALUES IN RANGE - i.e. only consider sum of values that fall in range min to max (inclusive)

int sumValuesInRange(int min, int max, int[] myA) {
 
  
  
  
  // TO COMPLETE
  
  
  
  
  return 0; // change this
}


// 5) SHUFFLE ELEMENTS AROUND

int[] shuffleElements(int[] myA) {
 
  int[] shuffled = new int[myA.length];
  
  
  
  // TO COMPLETE
  
  
  
  
  
  return shuffled;
  
  
}
