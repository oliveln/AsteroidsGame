//your variable declarations here
Spaceship firstShip = new Spaceship();
Star [] stars = new Star[400];
ArrayList <Asteroid> asteroidList = new ArrayList <Asteroid>();
int textX = 3;
int firstTextY = 20;
int textSpacing = 15;



int speed = 1;
boolean isMoving = true;
boolean isDevView = false;
int fieldsCounter = 0;

public void setup()
{
  background(0, 0, 0);
  size(500, 500);
  textAlign(LEFT);
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }

  for (int i = 0; i < 5; i++) {
    asteroidList.add(new Asteroid());
    asteroidList.get(i).move();
    asteroidList.get(i).show();
  }
}

public void draw()
{
  background(0, 0, 0);
  noStroke();
  for (int i = 0; i < stars.length; i++) {
    stars[i].show();
  }

  for (int i = 0; i < asteroidList.size(); i++) {
    asteroidList.get(i).move();
    asteroidList.get(i).show();
    float d = dist((float)(firstShip.getCenterX()), (float)(firstShip.getCenterY()), (float)asteroidList.get(i).getCenterX(), (float)asteroidList.get(i).getCenterY());
    if (d < 15) {
      asteroidList.remove(i);
      i--;
    }
  }
  if (isDevView == true) {
    textSize(15);
    fill(39, 175, 75);
    text("Speed: " + speed, textX, firstTextY);
    text("isMoving: " + isMoving, textX, firstTextY + textSpacing*1);
    text("Current X Position: " + (int)firstShip.getCenterX(), textX, firstTextY + textSpacing*2);
    text("Current Y Position: " + (int)firstShip.getCenterY(), textX, firstTextY + textSpacing*3);
    text("Current Direction of Pointer: " + (int)firstShip.getPointDirection(), textX, firstTextY + textSpacing*4);
    text("# of Stars: " + stars.length, textX, firstTextY + textSpacing*5);
    text("isDevView: " + isDevView, textX, firstTextY + textSpacing*6);
    text("# of Asteroids:" + asteroidList.size(), 3, firstTextY + textSpacing*7);
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
    if (speed < 10) {
      speed = speed + 1;
    }
  }
  if (key == 'q') {
    if (speed > 1) {
      speed = speed - 1;
    }
  }
  if (key == 'r') {
    firstShip.setNewXPosition((double)(Math.random() * 500));
    firstShip.setNewYPosition((double)(Math.random() * 500));
    firstShip.setNewPointDirection((double)(Math.random()*360));
    isMoving = false;
  }
  if (key == 32) {
    isDevView = !isDevView;
  }
}