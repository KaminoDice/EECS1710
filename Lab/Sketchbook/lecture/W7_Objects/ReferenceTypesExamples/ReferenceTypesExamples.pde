
// REFERENCE TYPES IN MEMORY

// ARRAYS

int[] myA = {100, 200, 300, 400, 500};

// attempt to print out myA variable... it holds an address only
print("myA = " + myA);

// printing out the values of the elements stored at the address (and offsets of the address)
println();
for (int i=0; i<myA.length; i++ ) {
  println("\tmyA[" + i + "] = " + myA[i] );
}

println();

// how about if we allocate a new array and assign to the original myA variable
myA = new int[5];
for (int i=0; i<myA.length; i++ ) {
  myA[i] = i*100 + 100;
}

// is the value stored in myA the same as before???    NO!!
print("myA = " + myA );

// but the values are similar (now stored in different locations)
println();
for (int i=0; i<myA.length; i++ ) {
  println("\tmyA[" + i + "] = " + myA[i] );
}


// STRINGS

String str1 = "Bob";
String str2 = "Jane";
String str3 = "Bob";
String str4;

// ARE str1 and str3 the same??

println();
println("is " + str1 + " == " + str2 + "?  =>  " + str1 == str2);
println("is " + str1 + " == " + str3 + "?  =>  " + str1 == str3);

// based on the above... is equality == sufficient to test equivalence of two strings?

// WHAT HAPPENS HERE?

str4 = str3;
println();
println(str3);
println(str4);
println(str4 == str3);
