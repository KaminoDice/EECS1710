

// simple text file reading

void setup() {

  size(600, 800);

  String[] colourList = readTextFile("colours2.txt");
  println("\ncolours.txt contains: ");
  float sX = 100;
  float sY = 100;

  for (int i=0; i<colourList.length; i++) {
    println("\t" + colourList[i]);

    // for each colour... set a stroke colour, and draw colour in that colour
    String[] tokens = split(colourList[i], ' ');
    String colName = tokens[0];
    int colrgb = color(int(tokens[1]), int(tokens[2]), int(tokens[3]));

    stroke(colrgb);
    fill(colrgb);
    textSize(128);
    text(colName, sX, sY);
    sY+=tokens[4];
  }
}
