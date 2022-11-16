import processing.sound.*;

// CREATING A SIMPLE TONE (pure sine/cosine waveform)

AudioSample sample;

void setup() {
  size(640, 360);
  background(255);

  int duration = 1;         // seconds
  int sampleRate = 44100;   // samples per sec = sample rate (SR)
  
  // this is how we can control how long a waveform will play for
  // - it assumes we are playing samples back at the sampleRate
  // - of course if we play them back faster.. or skip every second sample
  //   then the sound will appear to be higher pitched!  if we play slower
  //   then the sound will appear to be lower pitched!
  
  int numSamples = sampleRate;   // total samples
  
  float s = 0.0;                   // semi-tones (positive or negative)
  float freq = 440*pow(2,s/12);    // CONCERT A (+ semi-tones) -> in frequency in Hz (cycles/sec)
  
  float[] waveform;
   
  float[] waveform1 = genSineWave(440,sampleRate,numSamples);
  float[] waveform2 = genSineWave(430,sampleRate,numSamples);
  
  float[] waveform1b = genSineWave(440,sampleRate,numSamples);
  float[] waveform1c = genSineWave(440*2,sampleRate,numSamples);
  float[] waveform1d = genSineWave(440*3,sampleRate,numSamples);
  
  float[] waveform3 = genWhiteNoise(numSamples);
  float[] waveform4 = genSquareWave(200,sampleRate,numSamples);
 
 
  
  //waveform = addWaveforms(waveform1,0.5,waveform2,0.5);    // dyad - two close tones - beats effect)
  waveform = addWaveforms(waveform1,0.9,waveform3,0.1);    // tone + noise
  
  //waveform = addWaveforms(waveform1b,0.5,waveform1c,0.5);
  //waveform = addWaveforms(waveform,0.5,waveform1d,0.5);    // adds twice (creates a harmonic - all freqs are multiples of 440)
  
  //waveform = articulateWaveform(waveform1,"LEGATO");
  //waveform = articulateWaveform(waveform1,"STECCATO");
  //waveform = articulateWaveform(waveform1,"DECAY");
 
  //waveform = tremolo(440, 4, numSamples);
  
  // Create the audiosample based on the data currently in the waveform[] array
  sample = new AudioSample(this, waveform, sampleRate);
  
  // output some info
  println("\t duration = " + sample.duration() + " secs");
  println("\t SR       = " + sample.sampleRate() + " samples/sec");
  println("\t channels = " + sample.channels());
  println("\t frames   = " + sample.frames());

  displayWaveform(waveform,1000);
  
  
  // Play the sample in a loop (but don't make it too loud)
  //sample.amp(1);
  sample.play();
  //sample.loop();    // use this if you want to play continuously
  
  
}      

void draw() {
  
  
  
}
