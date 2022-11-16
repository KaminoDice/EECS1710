


float[] genWhiteNoise(int numSamples) {
  
  // uniform white noise just uses random values on (-1,+1) interval
  // when played back, it sounds like radio static
  
  float[] waveform = new float[numSamples]; 
  
  for (int i = 0; i < numSamples; i++) {
    // if i goes beyond sampleRate samples... can duplicate sine like this:
    waveform[i] = random(2)-1;    // generates random on (0-2) then -1 (so final is on (-1,1)
  }
  
  return waveform;
}
