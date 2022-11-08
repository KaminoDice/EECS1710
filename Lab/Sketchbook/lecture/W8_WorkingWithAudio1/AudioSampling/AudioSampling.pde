import processing.sound.*;

// CREATING A SIMPLE TONE (pure sine/cosine waveform)

AudioSample sample;

void setup() {
  size(640, 360);
  background(255);

  // Create an array and manually write a single sine wave oscillation into it.
  int sampleRate = 44100;   // samples per sec = sample rate (SR)
  float freq = 440;         // frequency in Hz (cycles/sec)
  // float freq = 440*pow(2,1.0/12);         // one semi-tone up from 440Hz
  
  float[] sinewave = new float[sampleRate];
  
  for (int i = 0; i < sinewave.length; i++) {
    sinewave[i] = sin(TWO_PI*freq*i/sampleRate);
    
    // if i goes beyond sampleRate samples... can duplicate sin like this:
    //sinewave[i] = sin(TWO_PI*freq*(i%sampleRate)/sampleRate);
  }

  // Create the audiosample based on the data in sinewave[] array
  // set framerate to play at 44100Hz
  
  sample = new AudioSample(this, sinewave);
 
  //sample = new AudioSample(this, sinewave, sampleRate); // also works
  
  // output some info
  println("\t duration = " + sample.duration() + " secs");
  println("\t SR       = " + sample.sampleRate() + " samples/sec");
  println("\t channels = " + sample.channels());
  println("\t frames   = " + sample.frames());

  // Play the sample in a loop (but don't make it too loud)
  sample.amp(0.5);
  sample.play();
  //sample.loop();    // use this if you want to play continuously
}      

void draw() {
}
