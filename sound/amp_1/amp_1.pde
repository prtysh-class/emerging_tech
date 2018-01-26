import processing.sound.*;
Amplitude amp;
AudioIn in;

void setup() {
  size(800, 500);
  background(255);
    
  // Create an Input stream which is routed into the Amplitude analyzer
  amp = new Amplitude(this);
  in = new AudioIn(this, 0);
  in.start();
  amp.input(in);
}      

void draw() {
  background(255);
  println(amp.analyze());
  float side = 10000* amp.analyze();
  stroke(0,80);
  noFill();
  rect(width/2-side/2,height/2-side/2,side,side);
}