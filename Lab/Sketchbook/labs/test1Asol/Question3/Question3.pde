// PRACTICE LABTEST 1A
// ===================
// NAME:
// STUDENT ID:
// USERNAME:
// ===================

// QUESTION 3   [ 10 marks ]




// constants



// isSpring2020 method (TO COMPLETE)
boolean isSpring2020(int month, int day) {
  
  boolean earlySpring = (month==3) && (day>=20);
  boolean midSpring   = (month>3)&&(month<6);
  boolean lateSpring  = (month==6) && (day<=19);
  
  boolean result = earlySpring || midSpring || lateSpring;
  return result;
  
}







// setup
void setup() {
 
  // DO NOT MODIFY THIS METHOD (it will run unit tests for you)
  
  // look at the output (this will tell you what is working/not)
  // ** note you will need a return value to run the method
  
  // unit tests
  println("isSpring2020(3,20) \t=>\texp: true  \tact:" + isSpring2020(3,20));
  println("isSpring2020(3,2) \t=>\texp: false \tact:" + isSpring2020(3,2));
  println("isSpring2020(3,31) \t=>\texp: true  \tact:" + isSpring2020(3,31));
  println("isSpring2020(4,1) \t=>\texp: true  \tact:" + isSpring2020(4,1));
  println("isSpring2020(1,1) \t=>\texp: false  \tact:" + isSpring2020(1,1));
  println("isSpring2020(5,22) \t=>\texp: true  \tact:" + isSpring2020(5,22));
  println("isSpring2020(7,10) \t=>\texp: false  \tact:" + isSpring2020(7,10));
  
  // you may add additional unit tests here
  
  
  
}
