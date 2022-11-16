


float[] genSquareWave(float freq, float sr, int numSamples) {

  float[] waveform = new float[numSamples]; 
  float sineValue;
  
  for (int i = 0; i < numSamples; i++) {
    // first calculate the sine wave
    sineValue = sin(TWO_PI*freq*(i%sr)/sr);
    
    // if positive, set to +1, if negative set to -1
    if (sineValue>0)
      waveform[i] = 1.0;
    else if (sineValue<0) 
      waveform[i] = -1.0;
    else
      waveform[i] = 0.0;  
  }
  
 return waveform;
 
}
