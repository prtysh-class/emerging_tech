void setup(){
  size(400,400);
  frameRate(10);
}

void draw(){
  /*
  fill(200,50);
  for(int i = 0; i < 100; i++){
   if(i%2==0){
     ellipse(random(width),random(height),50,50);
   }
   else{
     line(random(width),random(height),random(width),random(height));
   }
  }
   */
   
   /*
   for(int j = 0; j < width; j++){
     stroke(map(j,0,width,1,255));
     line(j,0,j,height);
   }
  */
  
  for(int i = 0; i < width; i = i + 10){
    float x = 0;
    noFill();
    x = map(i,0,width,20,50);
    ellipse(i,height/2,x,x);
  }
}