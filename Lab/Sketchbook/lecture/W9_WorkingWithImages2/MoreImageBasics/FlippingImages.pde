

PImage flipImage(PImage original, String direction) {
 
  PImage result = original.copy();
  
  
  for (int i=0; i<original.width; i++) {
    for (int j=0; j<original.height; j++) {
   
      if (direction.toLowerCase().equals("horizontal")) {
        result.set(i,j,original.get(original.width-1-i,j));
        
      }
      else if (direction.toLowerCase().equals("vertical")) {
        result.set(i,j,original.get(i,original.height-1-j));
        
      }
    }
  }
  
  return result;
  
}
