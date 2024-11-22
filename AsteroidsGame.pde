//your variable declarations here
Spaceship firstShip = new Spaceship();
Star [] stars = new Star[150];
int speed = 1;
boolean isMoving = true;

public void setup()
{
  background(0, 0, 0);

  size(500, 500);
  for(int i = 0; i < stars.length; i++){
    stars[i] = new Star();
  }
}
public void draw()
{
 
  background(0,0,0);
  for(int i = 0; i < stars.length; i++){
    stars[i].show();
  }
  
  firstShip.show();
  if (isMoving == true) {
    firstShip.move();
  }

}

public void keyPressed() {
  if (key == 'w') {
    isMoving = true;
    firstShip.setYspeed(-speed);
  }
  if (key == 's') {
    isMoving = true;
    firstShip.setYspeed(speed);
  }
  if (key == 'a') {
    isMoving = true;
    firstShip.setXspeed(-speed);
  }
  if (key == 'd') {
    isMoving = true;
    firstShip.setXspeed(speed);
  }
  if (key == 'e') {
    if(speed < 10){
    speed = speed + 1;
    }
  }
  if (key == 'q') {
    if(speed > 1){
    speed = speed - 1;
    }
  }
  if (key == 'r') {
    firstShip.setNewXPosition((int)(Math.random() * 500));
    firstShip.setNewYPosition((int)(Math.random() * 500));
    isMoving = false;
  }
}
