int frogX = 400;
int frogY = 550;
int score = 0;
int scoreCooldown = 0;
boolean dead = false;
Car car1 = new Car();
Car car2 = new Car();
Car car3 = new Car();

void draw() {
  if(dead) {
    fill(255);
    textSize(125);
    text("You Died", 100, 100);
  } else {
    scoreCooldown+=1;
    if(scoreCooldown>300) {
     scoreCooldown=0;
     score+=1;
    }
    
  if(dead==false) {
  dead = intersects(car1);
  }
  if(dead==false) {
  dead = intersects(car2);
  }
  if(dead==false) {
  dead = intersects(car3);
  }
  background(0);
  fill(#08C910);
  ellipse(frogX, frogY, 50, 50);
  car1.display();
  car2.display();
  car3.display();
  
  if(car1.getX()>900) {
    car1.reset();
  }
  if(car2.getX()>900) {
    car2.reset();
  }
  if(car3.getX()>900) {
    car3.reset();
  }
    fill(255);
    textSize(50);
    text("Score:" + score ,50, 550);
  }
}

void setup() {
 car1.reset();
 car2.reset();
 car3.reset();
 size(800, 600); 
}

void keyPressed()
{
    if(key == CODED){
        if(keyCode == UP)
        {
            //Frog Y position goes up
            frogY-=50;
        }
        else if(keyCode == DOWN)
        {
            //Frog Y position goes down 
            frogY+=50;
        }
        else if(keyCode == RIGHT)
        {
            //Frog X position goes right
            frogX+=50;
        }
        else if(keyCode == LEFT)
        {
            //Frog X position goes left
            frogX-=50;
        }
        keepInCanvas();
    }
}
void keepInCanvas() {
   if(frogY>550) {
     frogY-=50;
   }
   if(frogY<50) {
     frogY+=50;
   }
   if(frogX>750) {
     frogX-=50;
   }
   if(frogX<50) {
     frogX+=50;
   }
}

boolean intersects(Car car) {
 if ((frogY > car.getY() && frogY < car.getY()+50) &&
                (frogX > car.getX() && frogX < car.getX()+car.getSize())) {
   return true;
  }
 else  {
  return false;
 }
}
class Car{
  int carX;
  int carY;
  int carSize;
  int carSpeed;
  
  void display()
  {
    fill(255,0,0);
    rect(carX , carY, carSize, 50);
    carX+=carSpeed;
  }
  int getX() {
    return carX;
  }
  int getY() {
    return carY;
  }
  int getSize() {
    return carSize;
  }
  void reset() {
    carX = 0;
    carY = (int) random(50, 550);
    carSize = (int) random(50, 150);
    carSpeed = (int) random(1, 5)+score; 
  }
}
