

float[] addWaveforms(float[] w1, float a1, float[] w2, float a2) {
  
 // assumes both waveforms are same size arrays
 // a1 used to scale w1, a2 used to scale w2   (both between 0-1)
 
 float[] wResult = new float[w1.length];
  
 if (w1.length == w2.length) {
   // add them
   for (int i=0; i<wResult.length; i++) {
     wResult[i] = a1*w1[i] + a2*w2[i];
   }
 }
  
 return wResult;   // will be zeros if diff lengths
}
