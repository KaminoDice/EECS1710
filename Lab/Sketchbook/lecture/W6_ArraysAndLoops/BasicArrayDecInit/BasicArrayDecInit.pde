// SIMPLE ARRAY EXAMPLES

final int MAX_ELEMENTS = 10;


// Declaring arrays of primitive types: (note the following only declares variables)
// These are reference types (as we dont have a size associated yet), so they dont
// actually reference something in memory until we do so.
byte[] anArrayOfBytes;
short[] anArrayOfShorts;
long[] anArrayOfLongs;
float[] anArrayOfFloats;
double[] anArrayOfDoubles;
boolean[] anArrayOfBooleans;
char[] anArrayOfChars;


// Example 1: anArray of ints (lets declare MAX_ELEMENTS number of elements)

// two phases of declaration: declaration of array variable name (myArray), and
// its assignment to a newly requested block of memory (i.e. a number of elements of a given type)
int[] myArray;
myArray = new int[MAX_ELEMENTS];

// print myArray (note, only a space in memory is allocated at this point), and the
// array variable name holds only the address of the start of this block of memory
print(myArray);    // prints an address (looks like "[I@5d4b9d25" <- may differ on your computer)

// print myArray length
println(myArray.length);

println();
// traversal (for init or to compute something from the collection)
for (int i=0; i<myArray.length; i++) {
 println("myArray[" + i + "] = " + myArray[i]);   // we can see int arrays auto init elements to values of zero
}

println();
// what about byte arrays?
anArrayOfBytes = new byte[MAX_ELEMENTS];
for (int i=0; i<anArrayOfBytes.length; i++) {
 println("anArrayOfBytes[" + i + "] = " + anArrayOfBytes[i]);  
}

println();
// most numeric types initialized to zero...
// how about chars?
anArrayOfChars = new char[MAX_ELEMENTS];

for (int i=0; i<anArrayOfChars.length; i++) {
  
 println( "anArrayOfChars[" + i + "] = " + anArrayOfChars[i] + " -> isSpace=" + (anArrayOfChars[i]==' ') + " -> int value =" + int(anArrayOfChars[i]) );
 
 // looks like characters are not initialized with anything useful (not even an empty space) - take away message: best to initialize all arrays before using!

}

println();
// lets initialize ints to numbers 1-10
for (int i=0; i<myArray.length; i++) {
 myArray[i] = i+1;
 println("myArray[" + i + "] = " + myArray[i]);  
}

println();
// lets initialize ints to digits 9 downto 0
for (int i=0; i<myArray.length; i++) {
 myArray[i] = 9 - i;
 println("myArray[" + i + "] = " + myArray[i]);  
}


// AN ALTERNATIVE WAY TO INITIALIZE (only works at declaration though):
int[] anArrayAlso = {
  100,200,300,
  400,500,600,
  700,800,900,
  1000
};

println();
for (int i=0; i<anArrayAlso.length; i++) {
 println("anArrayAlso[" + i + "] = " + anArrayAlso[i]);  
}



// SELECTING A RANDOM ELEMENT FROM AN EXISTING ARRAY (select a random, but valid index)
println();
// pick a random value from array
int randIndex = floor(random(anArrayAlso.length));    // rounds down to nearest int, remember random returns a float
println("anArrayAlso[" + randIndex + "] = " + anArrayAlso[randIndex]);  
