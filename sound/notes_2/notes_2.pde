import processing.sound.*;
float x,A;
Reverb reverb;
Delay delay;
SawOsc saw;
void setup() {
  size(640, 360);
  background(51);
  
  reverb = new Reverb(this);
  delay = new Delay(this);
  saw = new SawOsc(this);
  
  A= 440;
  saw.freq(A);
  }      

void draw(){
  saw.freq(A*sin(x));
  saw.amp(0.3);
  x=x+0.01;
}

void keyPressed(){
  if(key == 'a'){saw.play();}
  if(key == 'r'){reverb.process(saw);}
  if(key == 'd'){delay.process(saw,0.3);}
}

void keyReleased(){
 if(key == 's'){saw.stop();}
 if(key == 'e'){reverb.stop();}
 if(key == 'f'){delay.stop();}
}