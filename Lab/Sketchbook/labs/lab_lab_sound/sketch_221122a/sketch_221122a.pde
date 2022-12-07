import processing.sound.*;
int sr = 44100;

void setup() {
  myWave = genTone(5,440,sr);
  sineWave = genSineWave(440, sr, 5);
  genTone = new AudioSample(this, myWave);
  sineTone = new AudioSample(this,sineWave);
  genTone.amp(0.3);
  genTone.play();
  sineTone.amp(0.3);
  //sineTone.play();
}

void draw(){
}
