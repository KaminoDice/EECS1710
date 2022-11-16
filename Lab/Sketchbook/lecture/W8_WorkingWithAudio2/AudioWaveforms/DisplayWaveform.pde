


void displayWaveform(float[] waveform, int showSamples) {

  float centreY = height/2; // draws at the centre of the window, 
  float xSpacing = width/(float)showSamples;   // spaced equally across the full width 
  
  float amplitude = 100;    // scale samples so we can see them
  
  
  
  // lets use the centreY as the zero value of the waveform
  for (int i=0; i<showSamples; i++ ) {
    circle(i*xSpacing, centreY + waveform[i]*amplitude, 2);
  }
  

}
