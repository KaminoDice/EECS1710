float[] sineWave;
AudioSample sineTone;

float[] genSineWave(float freq, int sr, float duration) {
  int numSamples = int(duration * sr);
  float[] waveform = new float[numSamples];
  for (int i = 0; i < numSamples; i++) {
    waveform[i] = sin(TWO_PI*freq*(i%sr)/sr);
  }
  return waveform;
}
