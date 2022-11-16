

String[] readTextFile(String fileName) {
  
  String[] lines = loadStrings(fileName);
  StringList content;  // an arraylist of strings
  
  println("The file: " + fileName + " has " + lines.length + " lines");
  
  if (!(lines.length>0)) return null; 
  
  content = new StringList();  // instantiate empty StringList
  
  int empty = 0;
  int text = 0;
  
  
  for (int i=0; i<lines.length; i++) {
   
    if (!(lines[i].isEmpty()||lines[i].isBlank()) ) {          
       content.append(lines[i]); 
       text++;
    }
    else {
      empty++;
    }
  }
  
  println("-> there were " + empty + " empty lines");
  println("-> there were " + text + " non-empty lines");
  
  return content.toArray();
  
  
}
