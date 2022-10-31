// SOME COMMON OPERATIONS ON ARRAYS

// Lets start with our previous example:
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


// SUM THE VALUES IN AN ARRAY
int sum = 0;
for (int i=0; i<anArrayAlso.length; i++) {
   sum += anArrayAlso[i];
}
println("\nsum of elements in anArrayAlso = " + sum);


// REVERSE AN ARRAY
println();
int[] anArrayAlsoReversed = new int[anArrayAlso.length];     // make a new array to hold reverse elements (same size)
for (int i=0; i<anArrayAlsoReversed.length; i++) {
  anArrayAlsoReversed[i] = anArrayAlso[anArrayAlso.length-1 - i];    // last element - i (i=0 and grows to last element)
  println("anArrayAlsoReversed[" + i + "] = " + anArrayAlsoReversed[i] ); 
}

// REASSIGN TO NEW ARRAY?  lets make an array of random values 
// to do this, we can allocate new space in memory and assign to existing array (but the old array will be lost - i.e. no longer accessible)
println();
print("anArrayAlso = " + anArrayAlso);
anArrayAlso = new int[anArrayAlso.length];
print(" -> new anArrayAlso = " + anArrayAlso);    // note array now refers to a different location in memory
println();

for (int i=0; i<anArrayAlso.length; i++) {
 anArrayAlso[i] = floor(random(100)); 
 println("anArrayAlso[" + i + "] = " + anArrayAlso[i]);  
}

// but now we cannot access the original anArrayAlso ... because we have no reference to its location in memory anymore



// FIND the MAXIMUM VALUE/INDEX?
int indexOfMax = 0;
int max = anArrayAlso[indexOfMax];     // initialize to first index, first element value (we dont know what values are in array)

for (int i=1; i<anArrayAlso.length; i++) {
 
  // already looked at i=0 element
  if (anArrayAlso[i] > max) {
    // need to update the max found so far
    indexOfMax = i;
    max = anArrayAlso[i];
  }
  
  // if current value is not bigger than max, then do nothing (keep current max)
  
}

println("max value = " + max + ", found at index = " + indexOfMax);



// FIND the MINIMUM VALUE/INDEX?
int indexOfMin = 0;
int min = anArrayAlso[indexOfMin];     // initialize to first index, first element value (we dont know what values are in array)

for (int i=1; i<anArrayAlso.length; i++) {
 
  // already looked at i=0 element
  if (anArrayAlso[i] < min) {
    // need to update the max found so far
    indexOfMin = i;
    min = anArrayAlso[i];
  }
  
  // if current value is not bigger than max, then do nothing (keep current max)
  
}

println("min value = " + min + ", found at index = " + indexOfMin);



// DOES A TARGET VALUE EXIST IN ARRAY?
int target = 66;
boolean found = false;      // assume not found, until we find..

// this version will look at all elements (even if found along the way)
for (int i=0; i<anArrayAlso.length; i++) {    
 
  if (anArrayAlso[i] == target) {
    found = true;
  }
  
}
println("anArrayAlso contains the value " + target + "? " + found);



// ARE ALL THE ELEMENTS IN AN ARRAY IN ORDER (e.g. ascending)
boolean isAscending = true;    // assume true and switch flag if we find even 1 case where it is not true

for (int i=1; i<anArrayAlso.length; i++) {    
 
  if (anArrayAlso[i] < anArrayAlso[i-1]) {      // if this element is smaller than last element, then false
    isAscending = false;
  }
  
}
println();
println("anArrayAlso is in ascending order? " + isAscending);
