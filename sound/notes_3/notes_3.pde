import processing.sound.*;
float x,A,C;

Reverb reverb;
Delay delay;
SawOsc saw;
SinOsc sin;

void setup() {
  size(640, 360);
  background(51);
  
  reverb = new Reverb(this);
  delay = new Delay(this);
  saw = new SawOsc(this);
  sin = new SinOsc(this);
  
  A= 261.63;
  C= 329.63;
  saw.freq(A);
  sin.freq(C);
  
}      

void draw(){
  saw.freq(A*sin(x));
  sin.freq(C*cos(x));
  saw.amp(0.3);
  sin.amp(0.2);
  x=x+0.01;
}


void keyPressed(){
  if(key == 'a'){saw.play(); sin.play();}
  if(key == 'r'){reverb.process(saw);}
  //if(key == 'd'){delay.process(saw,0.5);}
}

void keyReleased(){
 if(key == 's'){saw.stop();sin.stop();}
 if(key == 'e'){reverb.stop();}
 //if(key == 'f'){delay.stop();}
}