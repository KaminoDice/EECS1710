
class Car {
  
  // data fields
  String make;
  String model;
  int colour;
  String vinNumber;
  int year;


  // constructor(s)
  Car(String mk, String mo, int col, String vin, int yr) {
    make = mk;
    model = mo;
    colour = col;
    vinNumber = vin;
    year = yr;
  }
  
  // method(s)
  void display() {
    println("make = " + make + ", model = " + model + ", year = " + year);
    println("colour = " + colour + ", vin = " + vinNumber);
  }


}
