
// ACCUMULATOR2D Example

// - create a 2D array, where the user can click on a position, and it will 
//   correspond to a value being incremented (counter that counts clicks on that cell)
// - the count will increase, but cause the cell (a rect) to get darker (i.e. fill goes from white to black)

final int M = 3;
final int ACCUMULATOR_INIT_VALUE = 0;  // initial values (slight white/grey)
final int ACCUMULATOR_INC  =  1;       // increments by this each click (moves toward black)
final int GRID_SPACING = 100;

int[][] accumulator = new int[M][M];    // MxM = 3x3 accumulator (elements increase when clicked)


void setup() {

  size(300, 300);
  noFill();

  for (int i=0; i<M; i++) {
    for (int j=0; j<M; j++) {
      // 300x300  - init with zero values
      accumulator[i][j] = ACCUMULATOR_INIT_VALUE;
    }
  }
}


void draw() {
  // run and click the squares to accumulate counters and change colours
  showAccumulator();
  
}


void showAccumulator() {

  for (int i=0; i<M; i++) {
    for (int j=0; j<M; j++) {

      // assume accumulator uses up (0,300) to (0, 300) space on app window
      // draw a rect for each element of the accumulator..  let its value indicate

      stroke(0, 0, 0);
      rect(100*i, 100*j, 100, 100);        // draw rects at steps of 100,100, size 100x100

      fill(255-accumulator[i][j]*5);       // draw smaller rect with colour dep on accumulator value
      rect(100*i + 10, 100*j+10, 80, 80);  // starts at 255 white, then decreases by 5 as accumular increases (i.e becomes darker)
      noFill();

      fill(255, 0, 0);
      textSize(20);                        // show text value of the accumulator[i][j]
      text(""+accumulator[i][j], 100*i + 20, 100*j+40);
      noFill();
    }
  }
}



void mousePressed() {

  int xPos = mouseX;
  int yPos = mouseY;


  // update accumulator
  xPos = xPos/GRID_SPACING;    // int division, gives index into accumulator
  yPos = yPos/GRID_SPACING;

  if (accumulator[xPos][yPos]+ACCUMULATOR_INC <= 255)
    accumulator[xPos][yPos]+=ACCUMULATOR_INC;           // limit to positive
}
