// GENERATE CHECKERBOARD PATTERN

PImage checkerboard(int sizeX, int sizeY, int numX, int numY, int col1, int col2) {

  PImage board = createImage(sizeX, sizeY, RGB);
  
  int squareSizeX = sizeX/numX;
  int squareSizeY = sizeY/numY;
  int idxI = 0;
  int idxJ = 0;

  for (int i=0; i<sizeX; i++) {
    for (int j=0; j<sizeY; j++) {

      idxI = i/squareSizeX;    // calculate i index of square
      idxJ = j/squareSizeY;    // calculate j index of square

      if ((idxI+idxJ)%2==0) {  // if i+j index of square is even, set to col1, else set to col2
        board.set(i, j, col1);
      } else {
        board.set(i, j, col2);
      }
    }
  }


  return board;
}
