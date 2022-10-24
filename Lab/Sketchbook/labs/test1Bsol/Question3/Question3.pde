// PRACTICE LABTEST 1B
// ===================
// NAME:
// STUDENT ID:
// USERNAME:
// ===================

// QUESTION 3   [ 10 marks ]




// constants



// isThanksGiving method (TO COMPLETE)
boolean isThanksGiving(char dayOfWeek, int day, int month) {
  
  boolean tgInCanada = (dayOfWeek=='M') && 
                        (day>7 && day<=14) && 
                          (month == 10);
                          
  boolean tgInUSA =   (dayOfWeek=='K') && 
                        (day>21 && day<=28) && 
                          (month == 11);
  
  
  return tgInCanada || tgInUSA;
  
}







// setup
void setup() {
 
  // DO NOT MODIFY THIS METHOD (it will run unit tests for you)
  
  // look at the output (this will tell you what is working/not)
  // ** note you will need a return value to run the method
  
  // unit tests
  println("isThanksGiving('S',8,10) \t=>\texp: false  \tact:" + isThanksGiving('S',8,10));
  println("isThanksGiving('M',2,10) \t=>\texp: false \tact:" + isThanksGiving('M',2,10));
  println("isThanksGiving('M',10,10) \t=>\texp: true  \tact:" + isThanksGiving('M',10,10));
  println("isThanksGiving('T',22,11) \t=>\texp: false  \tact:" + isThanksGiving('T',22,11));
  println("isThanksGiving('K',22,11) \t=>\texp: true  \tact:" + isThanksGiving('K',22,11));
  println("isThanksGiving('K',14,11) \t=>\texp: false  \tact:" + isThanksGiving('K',14,11));
  
  // you may add additional unit tests here
  
  
  
}
