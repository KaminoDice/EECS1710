
////////////////////////////////
// COMPLETE THIS METHOD ONLY!

void genHexAddress(int num) {

  
   String hexDigits = "0123456789abcdef";
   int digitVal = hexDigits.length();
   
   for (int i=0; i<num; i++) {
    
     print(hexDigits.charAt(floor(random(digitVal))));
     print(hexDigits.charAt(floor(random(digitVal))));
     
     if (i<num-1)
       print(":");
   }
   println();    // not necessary
   
  
}
/////////////////////////////




////////////////////////////////
// DO NOT EDIT THE METHOD BELOW!
//
void question1() {
  

  // DO NOT MODIFY THIS METHOD - only complete getMACAddress() method
  // as described in the test webpage
  
  genHexAddress(6);
  genHexAddress(2);
  genHexAddress(1);
  
}
