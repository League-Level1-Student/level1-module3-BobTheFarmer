  int velocity=0;
  int y=250;
  int topPipe1X=0;
  int test = -100;
  int speed = 2;
  int pipeHeight = 100;
  int bottomPipeX = -75;
  int topPipeX = -75;
  int cooldown = 0;
  int score = 0;
  boolean dead = false;
void draw() {
  if(dead) {
   fill(0);
   textSize(75);
   text("You Died", 90, 150);
   textSize(40);
   text("Score:" + score + ", Speed: " + speed, 90, 200);
  } else {
  //draw stuff
  noStroke();
  background(100, 200, 255);
  fill(#F7FF1C);
  ellipse(250, y, 60, 40);
  fill(#36FF45);
  rect(bottomPipeX, 500-pipeHeight, 75, pipeHeight);
  rect(topPipeX, 0, 75, pipeHeight);
  fill(#C99608);
  rect(0, 470, 500, 30);
  
  //Do math
    //Bird
      if(velocity>11) {
       velocity=11; 
        }
       velocity+=1;
       y+=velocity;
      if(mousePressed && cooldown<1) {
        velocity=-8; 
        }
    //Pipes
       bottomPipeX-=speed;
       if(bottomPipeX<-75) {
        bottomPipeX = 500;
        pipeHeight = (int) random(100, 200);
        speed+=1;
        score += speed;
        if(speed>10) {
         speed=10; 
        }
       }
       topPipeX-=speed;
       if(topPipeX<-75) {
        topPipeX = 500;
       }
     //Collision
       if(bottomPipeX<280 && bottomPipeX>150) {
        if(y>500-pipeHeight) {
          dead=true;
        }
        if(y<pipeHeight) {
          dead=true; 
        }
       }
       if(y>450) {
        dead=true; 
       }
       if(y<30) {
        velocity = 2;
        cooldown = 20;
       }
       cooldown--;
 
  //Debug
  text("Velocity: " + velocity, 25, 20);
  text("Y: " + y, 25, 35);
  text("Dead: " + dead, 25, 50);
  text("Pipe X: " + bottomPipeX, 25, 65);
  text("Pipe Height: " + pipeHeight, 25, 80);
  }
}

void setup() {
  frameRate(30);
  size(500, 500);
  
}
