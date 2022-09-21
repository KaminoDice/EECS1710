// ======================================
// Lab 1
// Question 4 (using Question 3 as the basis for a visualization of 
//                  a particular colour combination and its resulting luminance)
// ======================================
// Student ID:
// First Name:
// EECS User Name (not password):
// ======================================

// [ 10 marks  ->  6 for functionality, 4 for aesthetic ]

// Notes:
//   -> create a graphical representation of the levels of r,g,b
//      the r,g,b colour that results, and the y equivalent
//   -> be creative with how you show this visually.  For example, consider
//      trying to use 2D graphics primitives explored in lab0 and lectures to
//      make an intuitive visualization of the colour mix and its result (see lab1.pdf)
//
//   -> This does not need to be a dynamic sketch, so no need for setup() and draw() blocks
//
//   -> You may use the following methods/commands to draw text to the application window:
//          text(), fill(), noFill(), textSize(), textFont(), textWidth(), etc.
//
//   -> The 2D graphics methods/commands may also be useful:
//          arc(), circle(), ellipse(), rect(), square(), line(), triangle(), ...
//
//   -> Marks will be given for aesthetic design of your visualization


// FUNCTIONALITY - YOUR APPLICATION MUST:
//
//   -> include and use colour
//   -> use some text printed into the application window (not console) to display 
//      the numeric values of the colour variables and luminance variable
//   -> include some 2D graphics representation of the colour variables that
//      uses a graphic to represents the proportion of each r,g,b colour 
//      (e.g. a graphic that represents a percentage of 255) according to 
//       the current values assigned to the variables for r,g,b )
//   -> show the resulting colour and luminance result in a graphical form
//   -> display a new result when re-run for a different set of r,g,b values


       // you may modify this, but you need to create a window




// INCLUDE CODE HERE FROM YOUR COMPLETED QUESTION 3 (that computes y from r,g,b)






// INCLUDE CODE BELOW TO CREATE YOUR VISUALIZATION OF THE COLOUR COMBINATIONS USED TO COMPUTE
// LUMINANCE ABOVE, AND THE RESULTING COLOURS & LUMINANCE (see lab1.pdf)
int centerX, centerY;
float a, b, c, d, e, f, g, h, k, x, y;

void setup() {
  size(800, 800);
  background(255);
  centerX = width/2;
  centerY = height/2;
}

void draw() {
  noStroke();
  fill(245, 155, 155, 50);
  circle(centerX, centerY, 475);
  fill(64,123,213, 120 );
  circle(centerX, centerY, 120 );
  fill(233,233);
  circle(centerX ,centerY, 24 );
  {
    stroke(1);
    x = 378;
    k = 125;
    y = 265;


    for (int i=1; i<361; i+=1) {
      a = radians(i);
      b = radians(i-1);
      c = a*x;
      d = b*x;

      e = (x-y)*cos(b)+k*cos(d);
      f = (x-y)*sin(b)+k*sin(d);

      g = (x-y)*cos(a)+k*cos(c);
      h = (x-y)*sin(a)+k*sin(c);
      line(centerX+e, centerY+f, centerX+g, centerY+h);
    }
  }
}
