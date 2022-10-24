// PRACTICE LABTEST 1B
// ===================
// NAME: SOLUTION
// STUDENT ID:
// USERNAME:
// ===================

// QUESTION 2   [ 10 marks ]




// constants 
  final float LITRES_PER_CUBIC_METRE = 1000;

// METHODS:
// ** You can use one or two methods (two is more straight forward)

//   - formulas needed are shown in test webpage
//   - methods should return a value 
//     given input value for radius


// volume of sphere method (TO ADD & COMPLETE)
// surface area of sphere method (TO ADD & COMPLETE)

// no stipulation to return a value (so using void)
float sphereVolL(float radiusM) {

  
  // volume in m cubed
  float volumeCbM =  4*PI/3*pow(radiusM,3);
  
  return volumeCbM*LITRES_PER_CUBIC_METRE;
   
}

float sphereSAreaSqM(float radiusM) {
  // surface area in m squared
  float surfaceAreaSqM = 4*PI*pow(radiusM,2); // or use radiusM*radiusM

  return surfaceAreaSqM;

}







// setup
void setup() {
 
  // call(s) to your volume & surface area methods
  float radius = 3.57;
  float surfA  = sphereSAreaSqM(radius);
  float vol    = sphereVolL(radius);
  
  // formatted output
  // PLEASE NOTE, OUTPUT USES PROCESSING's VERSION OF PI
  // and this solutions uses float precision (not double)
  // which gives slightly different output to java result (shown on question)
  
  println("=======");
  println("Sphere:");
  println("=======");
  println(" => Radius (r)  = " + nf(radius,0,3) + " m");
  println(" => SArea  (SA) = " + nf(surfA,0,3) + " sq. m");
  println(" => Volume (V)  = " + nf(vol,0,3) + " L");
  
  
  
}
