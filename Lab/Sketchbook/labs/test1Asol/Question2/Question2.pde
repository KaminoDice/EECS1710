// PRACTICE LABTEST 1A
// ===================
// NAME: SOLUTION
// STUDENT ID:
// USERNAME:
// ===================

// QUESTION 2   [ 10 marks ]




// constants



// humidex method (TO ADD & COMPLETE)
//   - formula needed is shown in test webpage)
//   - this method should return a value for the humidex 
//     given input values for airTemp & dewPoint

int calcHumidex(float airTemp, float dewPointC) {
  
  final float DP_FACTOR = 0.5555;
  final float E_FACTOR = 6.11;
  final float E_POWER = 5417.7530;
  final float K_FREEZING = 273.16;
  final int offset = 10;
  
  float dewPointK = dewPointC + K_FREEZING;
  float exponent = E_POWER * ( 1/K_FREEZING - 1/dewPointK );

  int humidex = round( airTemp + DP_FACTOR*(E_FACTOR*exp(exponent) - offset) ); 
  
  return humidex;
  
}








// setup
void setup() {
 
   
  int airTmp = 30;
  int dewPtC = 25;
  
  // call(s) to humidex method
  int humidex = calcHumidex(airTmp, dewPtC);
  
  
  // formatted output
  println("----------------------------");
  println("AirTemp:               " + airTmp + "(C)");
  println("DewPoint:              " + dewPtC + "(C)");
  println("Humidex (feels like):  " + humidex + "(C");
  println("============================");
  
  
  
  
}
