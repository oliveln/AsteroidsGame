//your variable declarations here
Spaceship firstShip = new Spaceship();
Star [] stars = new Star[150];
int speed = 1;
boolean isMoving = true;

public void setup()
{
  background(0, 0, 0);
  size(500, 500);
  textAlign(LEFT);
  for(int i = 0; i < stars.length; i++){
    stars[i] = new Star();
  }
}
public void draw()
{
  background(0,0,0);
  textSize(30);
  fill(0, 0, 255);
  text("Speed: " + speed, 0, 25); 
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
    firstShip.setNewPointDirection(270);
  }
  if (key == 's') {
    isMoving = true;
    firstShip.setYspeed(speed);
    firstShip.setNewPointDirection(90);
  }
  if (key == 'a') {
    isMoving = true;
    firstShip.setXspeed(-speed);
    firstShip.setNewPointDirection(180);
  }
  if (key == 'd') {
    isMoving = true;
    firstShip.setXspeed(speed);
    firstShip.setNewPointDirection(360);
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
    firstShip.setNewXPosition((double)(Math.random() * 500));
    firstShip.setNewYPosition((double)(Math.random() * 500));
    firstShip.setNewPointDirection((double)(Math.random()*360));
    isMoving = false;
  }
}
