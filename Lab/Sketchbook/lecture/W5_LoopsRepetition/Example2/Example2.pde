final int MILLION = 1000000;

int expo = 0;

for (  ; pow(2, expo)<MILLION;  ) {
  print(expo + " ");
  expo++;
}

println();
println(expo-1);
