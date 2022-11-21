
////////////////////////////////
// COMPLETE THIS METHOD ONLY!

boolean isValidMAC( String mac ) {
  
  String validDigits = "0123456789abcdef";
  String[] hexDigits = split(mac, ':');

  if (hexDigits.length != 6)     // must have 6 hex values
    return false;

  for (int i=0; i<hexDigits.length; i++) {
    
    if (hexDigits[i].length()!=2)   // each hexdigit must have 2 digits
      return false;
    
    // current hexDigit has 2 digits (check they are both hex values)
    if (  (validDigits.indexOf(hexDigits[i].charAt(0))==-1) || 
          (validDigits.indexOf(hexDigits[i].charAt(1))==-1) )
          return false;
          
  }
  
  return true;  // if we made it here, then all digits are valid!
}
/////////////////////////////




////////////////////////////////
// DO NOT EDIT THE METHOD BELOW!
//
void question2() {
  
  // this method runs and outputs tests for the method isValidMAC()
  // DO NOT MODIFY THIS METHOD - only complete isValidMAC() method
  
  
  println("isValidMAC(\"a3:d2:01:43:f1:0c\"); \texp: true    \t act: " + isValidMAC("a3:d2:01:43:f1:0c") );
  println("isValidMAC(\"a3:d2:01:43:f1:0g\"); \texp: false   \t act: " + isValidMAC("a3:d2:01:43:f1:0g") );
  println("isValidMAC(\"a3:d2:301:43:f1:0a\"); \texp: false   \t act: " + isValidMAC("a3:d2:301:43:f1:0a") );
  
  
  
}
