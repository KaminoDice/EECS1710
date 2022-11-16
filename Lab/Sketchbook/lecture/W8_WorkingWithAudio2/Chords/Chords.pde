import processing.sound.*;

final int SAMPLE_RATE = 44100;

void setup() {
  size(600,400);
  
  float[] chordAMajor = genTriad(440, 554.36526, 659.25511, 1.5);
  
  AudioSample audioChord = new AudioSample(this, chordAMajor);
  
  audioChord.play();
}

void draw() {
  
}

void keyPressed() {
  
}


float[] genTriad(float f1, float f2, float f3, float duration) {
  
  int numSamples = (int) (duration*SAMPLE_RATE);
  
  float[] result = new float[numSamples];
  float[] wave1 = genSineWave(f1,numSamples);
  float[] wave2 = genSineWave(f2,numSamples);
  float[] wave3 = genSineWave(f3,numSamples);
  
  for (int i=0; i<numSamples; i++) {
    result[i] = 0.3*wave1[i]+0.3*wave2[i]+0.3*wave3[i];
  }
  stroke(255,0,0); displayWaveform(wave1,height/3,1000);
  stroke(0,255,0); displayWaveform(wave2,height/3,1000);
  stroke(0,0,255); displayWaveform(wave3,height/3,1000);
  displayWaveform(result,height*2/3,1000);
  return result;
}



float[] genSineWave(float freq, int numSamples) {
  
  float[] waveform = new float[numSamples];  
  
  for (int i = 0; i < numSamples; i++) {
    // if i goes beyond sampleRate samples... can repeat sinewave
    waveform[i] = sin(TWO_PI*freq*(i%SAMPLE_RATE)/SAMPLE_RATE);
  }
 return waveform; 
}

void displayWaveform(float[] waveform, float yPos, int showSamples) {
  
  float amplitude = 20;    // scale samples so we can see them
  
  // waveform samples should be spaced equally over the width of the window
  float xSpacing = width/(float)showSamples;  
  
  // lets use the centreY as the zero value of the waveform
  for (int i=0; i<showSamples; i++ ) {
   
    //println("x = " + i*xSpacing + 
    circle(i*xSpacing, yPos + waveform[i]*amplitude, 2);
    
  }
  
}
