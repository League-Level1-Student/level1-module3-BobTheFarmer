  int velocity=0;
  int y=250;
  int topPipe1X=0;
void draw() {
  //draw stuff
  background(100, 200, 255);
  fill(#F7FF1C);
  stroke(#F7FF1C);
  ellipse(250, y, 60, 40);
  
  //Do math
    //Bird
      if(velocity>11) {
       velocity=11; 
        }
       velocity+=1;
      if(mousePressed) {
        velocity=-8; 
        }
    //Pipes
       
  //Move stuff
  y= y+velocity;
 
  //Debug
  text("Velocity: " + velocity, 25, 20);
  text("Y: " + y, 25, 35);
  if(test==0) {
  Makepipe(true, 0);
  test++;
  }
}

void setup() {
  frameRate(30);
  size(500, 500);
  
}

void Makepipe(boolean top, int height) {
  for(int x = 25000; x>-50; x-=1) {
    fill(#F7FF1C);
    rect(x, 100, 50, 100);
  }
}
