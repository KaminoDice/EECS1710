MovingCar mvCar0;
MovingCar mvCar1;
MovingCar mvCar2;
MovingCar mvCar3;

void setupMovingCar() {
  mvCar0 = new MovingCar();
  mvCar1 = new MovingCar(color(255,0,0),0,100,4);
  mvCar2 = new MovingCar(color(0,0,255),0,10,2);
  mvCar3 = new MovingCar(color(0,255,0),0,50,-3);
  
}



void drawMovingCar()  {
  background(0,0,0);
  mvCar0.move(); mvCar0.display();
  mvCar1.move(); mvCar1.display();
  mvCar2.move(); mvCar2.display();
  mvCar3.move(); mvCar3.display();
}
