int startTime,currentTime,timeElapsed;
float secondCounter,minuteCounter, hourCounter, dayCounter;
float secondArm, minuteArm, hourArm, dayArm;

void setup() {
  
  size(1024,768);
  startTime = millis();
  currentTime = millis();
  timeElapsed = currentTime - startTime;
  noStroke();
  colorMode(HSB, 100);
  frameRate(60);
  secondArm = height*0.2;
  minuteArm = height*0.28;
  hourArm = height*0.35;
  dayArm = height*0.4;
  
}

void draw(){
  background(0);
  translate(width*0.4,height*0.4);
  
  currentTime = millis();
  
  secondCounter = TWO_PI*currentTime/1000;
  minuteCounter = TWO_PI*currentTime/(1000*60);
  hourCounter = TWO_PI*currentTime/(1000*60*60);
  dayCounter = TWO_PI*currentTime/(1000*60*60*24);
  
  fill(80,50,30,90);
  pushMatrix();
  arc(0, 0, dayArm, dayArm, 0, (dayCounter)%TWO_PI);
  popMatrix();
    
  fill(60,60,50,90);
  pushMatrix();
  rotate(PI*0.8);
  arc(0, 0, hourArm, hourArm, 0, (hourCounter)%TWO_PI);
  popMatrix();
    
  fill(95,70,80,90);
  pushMatrix();
  rotate(PI*0.6);
  arc(0, 0, minuteArm, minuteArm, 0, (minuteCounter)%TWO_PI);
  popMatrix();
  
  fill(20,80,100,90);
  pushMatrix();
  rotate(PI/3);
  arc(0, 0, secondArm, secondArm, PI, (secondCounter)%TWO_PI);
  popMatrix();
  
  saveFrame("images/image####.jpg");
}