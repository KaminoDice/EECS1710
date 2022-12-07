float[] myWave;
AudioSample genTone;

float[] genTone(float duration, float freq, int sr) {
  int leng = int(duration*sr);
  float[] toneWave = new float[leng];
  for (int i = 0; i<leng; i++) {
    toneWave[i] = sin(TWO_PI*freq*i/sr);
  }
  return toneWave;
}
