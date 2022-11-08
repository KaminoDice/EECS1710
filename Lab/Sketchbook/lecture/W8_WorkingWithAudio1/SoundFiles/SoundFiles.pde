import processing.sound.*;

final int BLACK = color(0,0,0);
final int WHITE = color(255,255,255);

// Playing/loading an AudioSample from a SoundFile

SoundFile file;
float rate = 1.0;

//AudioSample sample;

void setup() {
  size(640, 360);
  background(255);
    
  // Load a soundfile from the /data folder of the sketch and play it back
  file = new SoundFile(this, "fantasy.wav");
  //file = new SoundFile(this, "preamble.wav");
  
  println("file info:");
  println("-> channels: " + file.channels());
  println("-> duration: " + file.duration() + " secs");
  println("-> frames  : " + file.frames());
  

  
}      

void draw() {
  //background(WHITE);
  
  if (file.isPlaying()) {
    stroke(BLACK);
    // full progress
    rect(20,20,width-40,40);
    fill(BLACK);
    // progress bar
    rect(20,20,file.percent()/100*(width-40),40);
    noFill();
  }
  
}

void mousePressed() {
  // use left click to play/pause
  // use right click to change speed of playback (i.e. sample rate) of audio object
  
  if (file.isPlaying() ) {
    if (mouseButton==37) {
      file.pause(); 
      println("..paused");
    }
    if (mouseButton==39) {
      
      // alternative to if/else statements 
      // (when testing for multiple values of expression)
      
      // see Week 4, Lecture8 (slide 20->27)
      //   -> statements after each case are run (if case is the value
      //      of the expression in the switch ().. the break keyword
      //      tells the program to exit the switch statement
      
      switch (int(rate)) {
      
        // same as: if (int(rate)==1) then do these
        case 1:  file.rate(2); rate=2; break; 
        
        // otherwise if (int(rate)==2) then do these
        case 2:  file.rate(0.5); rate=0.5; break;
        
        // otherwise do these
        default: file.rate(1); rate=1;
      }
      
    }
   
  }
  else {
   file.play(); 
   println("playing..");
  }
}
