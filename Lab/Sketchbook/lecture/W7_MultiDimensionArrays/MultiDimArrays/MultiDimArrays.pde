// MULTI-DIMENSIONAL ARRAYS (introduction - more later when we work with images)

String[][] names = {
  {"Mr. ", "Mrs. ", "Ms. "},
  {"Smith", "Jones"}
};


// Mr. Smith
println(names[0][0] + names[1][0]);


// Ms. Jones
println(names[0][2] + names[1][1]);


println();

// 2D Integer Array
final int M = 3;
final int N = 3;

int [][] array2D1 = new int[M][N];  // empty size MxN
// initializes all
// values to 0


int [][] array2D = {                // initialized with
  { 1, 2, 3}, // specific values
  { 4, 5, 6},
  { 7, 8, 9}
};


// output = ??
println("array2D.length    = " + array2D.length);
println("array2D[0].length = " + array2D[0].length);
//println("array2D[1].length = " + array2D[1].length);


// ??
// println("array2D[0][0].length = " + array2D[0][0].length);


println();
for (int i = 0; i < M; i++) {
  for (int j = 0; j < N; j++) {
    print("\t" + array2D[i][j]);    // swap i and j around here (see what happens)
  }
  print("\n\n");
}
