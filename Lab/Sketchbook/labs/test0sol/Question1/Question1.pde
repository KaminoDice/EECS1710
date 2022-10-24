// QUESTION 1 (Dry Run Labtest)
// TIME CONVERTER


// constants (to do)
final int MINS_PER_HOUR = 60;
final int SECS_PER_MIN = 60;


// variables (given)
int hours = 1;
int mins = 28;
int secs = 14;

float timeInMins;      // need to calculate these
float timeInSecs;


// calculations (to do)
timeInMins = hours*MINS_PER_HOUR + mins + secs/(float)SECS_PER_MIN;
timeInSecs = round(timeInMins*SECS_PER_MIN);



// console output (to do)
//   (NOTE: you can use nf(x,0,d) to format floats)
println("---------------");
println("Time Converter:");
println("---------------");
print(hours + " hr, " + mins + " min, " + secs + " sec = ");
println(nf(timeInMins,0,5) + " minutes = " + (int)timeInSecs + " seconds");
