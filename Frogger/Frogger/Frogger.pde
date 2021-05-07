int frogX = 400;
int frogY = 550;

void draw() {
  background(0);
  fill(#08C910);
  ellipse(frogX, frogY, 50, 50);
}

void setup() {
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
    }
}
void keepInCanvas() {
   if(frogY>800 || frogY<0 ||frogX>800 || frogY<0) {
     //TP back
   }
}
