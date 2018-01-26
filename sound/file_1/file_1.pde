import processing.sound.*;
SoundFile file;

boolean status = false;

void setup() {
  size(640, 360);
  background(51);
    
  // Load a soundfile from the /data folder of the sketch and play it back
  file = new SoundFile(this, "file1.mp3");
  
}      

void draw() {
  //drawing or rendering
  rect(width/2-20,height/2-20,40,40);
  //physics
  if((mouseX > -20+width/2)&& (mouseY>-20+height/2) && (mouseX<20+width/2) && (mouseY<20+width/2))
  {
    if(status == false){
      file.play();
      status = true;
    }
  }
  else
  {
    if(status==true){
      file.stop();
      status = false;
    }
  }
   
}