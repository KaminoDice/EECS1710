

float[] genSineWave(float freq, float sr, int numSamples) {

  float[] waveform = new float[numSamples]; 
  
  for (int i = 0; i < numSamples; i++) {
    // if i goes beyond sampleRate samples... can repeat sinewave
    waveform[i] = sin(TWO_PI*freq*(i%sr)/sr);
  }
  
 return waveform;
 
}
