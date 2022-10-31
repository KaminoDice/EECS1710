// char[] arrays vs strings

// String is a special type -> reference type like array (as it is much like an array - of chars)
// Unlike an array, String is a type of object (we will learn these later)
// Objects hold both data & properties (like an array), but also methods (that work on them)
//   - String has a method .length()  -> which returns its length (num of chars)
//   - String has a method .toCharArray() -> which converts it into an array of chars!
//   - String has other methods (we will learn later)

String sentence = "Hello there, how are you?";


char[] sentenceChars = sentence.toCharArray();

//println(sentence);
//println(sentenceChars);

// lets count the number of 'e's in the sentence:

int numEs = 0;
for (int i=0; i<sentenceChars.length; i++) {

   if ( (sentenceChars[i] == 'e') || (sentenceChars[i] == 'E') ) {
     numEs++;
   }
}
println("there are " + numEs + " e's in " + sentence);    // note, used string version to output all chars




// TOKENIZING A STRING (breaking it into substrings, based on a seperator character)

sentence = "input string 4.5 with words and 32 numbers";
String[] tokens = split(sentence,' ');

println();
println("sentence = " + sentence);
println("tokens:");
println("\ttokens[0] = " + tokens[0]);
println("\ttokens[1] = " + tokens[1]);
println("\ttokens[2] = " + tokens[2]);
