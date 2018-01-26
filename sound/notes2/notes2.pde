import processing.sound.*;

SinOsc sineA;

void setup() {
  size(640, 360);
  background(51);
  
  sineA = new SinOsc(this);
  float A= 261.63,B=293.66,C=329.63,D=349.23,E=392,F=440,G=493.88,A2=532.25;
  
  sineA.play();
  //sineA.freq(A);
}      

void draw(){
}

void keyPressed(){
  if(key == 'a'){
    sineA.play();
    }
  }
  
/*
void keyReleased(){
 if(key == 'a'){sineA.stop();}
 if(key == 's'){sineB.stop();}
 if(key == 'd'){sineC.stop();}
 if(key == 'f'){sineD.stop();}
 if(key == 'g'){sineE.stop();}
 if(key == 'h'){sineF.stop();}
 if(key == 'j'){sineG.stop();}
 if(key == 'k'){sineA2.stop();}
}
*/