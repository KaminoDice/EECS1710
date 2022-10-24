// PRACTICE LABTEST 1B
// ===================
// NAME: SOLUTION
// STUDENT ID:
// USERNAME:
// ===================


// QUESTION 1   [ 10 marks ]


// variables & constants
final int HOURS_PER_DAY = 24;
final int DAYS_PER_WEEK = 7;


int weeks = 1;
int days = 28;
int hours = 14;


// calculations 
float totalDays = weeks*DAYS_PER_WEEK + days + hours/(float)HOURS_PER_DAY;
int totalHours = round(totalDays*HOURS_PER_DAY);


// output
println("---------------");
println("Time Elapsed:    ");
println("---------------");
print(weeks + " weeks, " + days + " days, " + hours + " hours = ");
println( nf(totalDays,0,4) + " days = " + totalHours + " hours");
