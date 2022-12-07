Car myV1;
Car myV2;


void setupCar() {
  
  myV1 = new Car("Mazda", "CX5", color(0,255,0), "R121FI23100", 2015);
  myV2 = new Car("Toyota", "Corolla", color(100,100,100), "Z023BI44913", 2018);
  
  
}


void drawCar() {
  myV1.display(); println();
  myV2.display();
 
  
}
