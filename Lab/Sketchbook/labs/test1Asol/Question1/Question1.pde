// PRACTICE LABTEST 1A
// ===================
// NAME: SOLUTION
// STUDENT ID:
// USERNAME:
// ===================


// QUESTION 1   [ 10 marks ]


// variables & constants
final float MASS_EARTH = 5.972E24 ;
final float MASS_SUN   = 1.988E30;
final float MASS_MOON  = 7.363E22; 

final float DIST_MOON  = 384403.9E3;
final float DIST_SUN   = 1.496E11;
final float G_CONST   = 6.674E-11;



// calculations 
float Gcac(float M1, float M2, float DIST){
    float Force = (G_CONST*M1)*(M2/DIST)/DIST;
    return Force;
}

double force1 = Gcac(MASS_EARTH,MASS_MOON,DIST_MOON);
double force2 = Gcac(MASS_EARTH,MASS_SUN,DIST_SUN);

void setup(){
// output
  println("Force Moon and Earth =\t"+ force1);
  println("============ ============ ============ ========== ");
  println("Force Sun and Earth =\t"+ force2);
}
