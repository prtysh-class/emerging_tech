int currentTime;

void setup() {
  size(600,600);
  currentTime = millis();
}

void draw(){
  background(0);
  pushMatrix();
  translate(width/2,height/2);
  rotate(TWO_PI*currentTime/1000);
  ellipse(50,0,30,30);
  currentTime = millis();
  popMatrix();
  println(millis());
  
  pushMatrix();
  translate(width/2,height/2);
  rotate(TWO_PI*currentTime/60000);
  ellipse(100,0,30,30);
  currentTime = millis();
  popMatrix();
  println(millis());
  
  pushMatrix();
  translate(width/2,height/2);
  rotate(TWO_PI*currentTime/3600000);
  ellipse(150,0,30,30);
  currentTime = millis();
  popMatrix();
  println(millis());
  
  pushMatrix();
  translate(width/2,height/2);
  rotate(TWO_PI*currentTime/86400000);
  ellipse(200,0,30,30);
  currentTime = millis();
  popMatrix();
  println(millis());
  
}