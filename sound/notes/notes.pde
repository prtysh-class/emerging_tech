import processing.sound.*;

Reverb reverb;

SinOsc sineA;
SinOsc sineB;
SinOsc sineC;
SinOsc sineD;
SinOsc sineE;
SinOsc sineF;
SinOsc sineG;
SinOsc sineA2;

void setup() {
  size(640, 360);
  background(51);
  
  reverb = new Reverb(this);
  
  sineA = new SinOsc(this);
  sineB = new SinOsc(this);
  sineC = new SinOsc(this);
  sineD = new SinOsc(this);
  sineE = new SinOsc(this);
  sineF = new SinOsc(this);
  sineG = new SinOsc(this);
  sineA2 = new SinOsc(this);
  
  float A= 261.63,B=293.66,C=329.63,D=349.23,E=392,F=440,G=493.88,A2=532.25;
  sineA.freq(A);
  sineB.freq(B);
  sineC.freq(C);
  sineD.freq(D);
  sineE.freq(E);
  sineF.freq(F);
  sineG.freq(G);
  sineA2.freq(A2);
  
  
}      

void draw(){
}
void keyPressed(){
  if(key == 'a'){sineA.play();}
  if(key == 's'){sineB.play();}
  if(key == 'd'){sineC.play();}
  if(key == 'f'){sineD.play();}
  if(key == 'g'){sineE.play();}
  if(key == 'h'){sineF.play();}
  if(key == 'j'){sineG.play();}
  if(key == 'k'){sineA2.play();}
  if(key == 'q'){reverb.process(sineA);}
  if(key == 'w'){reverb.process(sineB);}
  if(key == 'e'){reverb.process(sineC);}
}

void keyReleased(){
 if(key == 'z'){sineA.stop();}
 if(key == 'x'){sineB.stop();}
 if(key == 'c'){sineC.stop();}
 if(key == 'v'){sineD.stop();}
 if(key == 'b'){sineE.stop();}
 if(key == 'n'){sineF.stop();}
 if(key == 'm'){sineG.stop();}
 if(key == ','){sineA2.stop();}
 if(key == 'i'){reverb.stop();}
}