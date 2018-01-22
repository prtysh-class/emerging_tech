float x1,y1,x2,y2,x3,y3;
float x11,y11,x22,y22,x33,y33;
int  i;
void setup(){
  size(400,400);
  
}

void draw(){
  background(255);
  translate(width/2,height/2);
  
  fill(100,20,20,100);
  noStroke();
  
  beginShape();
  vertex(x1, y1);
  vertex(x2, y2);
  vertex(x3, y3);
  endShape(CLOSE);
  
  fill(20,20,200,100);
  noStroke();
  
  beginShape();
  vertex(x11, y11);
  vertex(x22, y22);
  vertex(x33, y33);
  endShape(CLOSE);
  
  
  i = i+1;
  
  x1 = 0; 
  y1 = 0;
  x2 = 0;
  y2 = -100;
  x3 = 100*cos(TWO_PI*i/100);
  y3 = 100*sin(TWO_PI*i/100);
  
  x11 = 0; 
  y11 = 0;
  x22 = 150;
  y22 = 0;
  x33 = 150*cos(TWO_PI*i/2000);
  y33 = 150*sin(TWO_PI*i/2000);
  
}