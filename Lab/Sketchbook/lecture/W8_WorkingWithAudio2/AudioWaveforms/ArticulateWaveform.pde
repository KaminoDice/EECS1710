

float[] articulateWaveform(float[] waveform, String mode) {

  float[] articulated = new float[waveform.length];
  float amplitude = 1.0;
  float decaySamples;

  if (mode.equals("LEGATO")) {
    for (int i=0; i<articulated.length; i++) {
      articulated[i] = waveform[i];
    }
  }

  if (mode.equals("STECCATO")) {

    decaySamples = 0.4*41000;        // 0.4 sec in samples
    for (int i=0; i<decaySamples; i++) {
      articulated[i] = exp(-1.0*i/(0.25*decaySamples))*waveform[i];
    }
  }

  if (mode.equals("DECAY")) {

    decaySamples = 1*41000;
    for (int i=0; i<decaySamples; i++) {
      articulated[i] = exp(-1.0*i/(0.25*decaySamples))*waveform[i];
    }
  }

  return articulated;   // will be zeros for all remaining samples
}



float[] tremolo(float f1, float f2, int numSamples) {

  float[] wave1 = genSineWave(f1,44100,numSamples);
  float[] wave2 = genSineWave(f2,44100,numSamples);
  float[] result = new float[numSamples];
  
  for (int i=0; i<result.length; i++) {
    result[i] = wave1[i]*wave2[i];
  }
  
  return result;
}
