import processing.sound.*;

boolean noise_on;
BrownNoise noise;

void setup() {
  size(640, 360);
  background(0);
  
  // Create the noise generator
  noise = new BrownNoise(this);
  
}      

void draw() {
  
}

void keyPressed(){
  if(key == 'n'){  
    if (!noise_on){
      noise.play();
      noise_on = !noise_on;
    }
    else {
      noise.stop();
      noise_on = !noise_on;
    }
  }
}