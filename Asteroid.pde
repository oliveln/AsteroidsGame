class Asteroid extends Floater
{
  public double rotationSpeed;
  public Asteroid() {
    rotationSpeed = 3;
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = - 9;
    yCorners[0] = -6;
    xCorners[1]= 5;
    yCorners[1] = -8;
    xCorners[2] = 8;
    yCorners[2] = 0;
    xCorners[3] = 6;
    yCorners[3] = 10;
    xCorners[4] = -9;
    yCorners[4] = 8;
    xCorners[5] = -10;
    yCorners[5] = 0;
    myColor = color(85, 67, 52);
    myCenterX = (double)(Math.random()*width)+1;
    myCenterY = (double)(Math.random()*height)+1;
    myCenterY= 200;
    myXspeed = (double)(Math.random()*2)+1;
    myYspeed = (double)(Math.random()*2)+1;
    myPointDirection = 360;
  }
  public void move() {
    turn(rotationSpeed);
    super.move();
  }
  public void setNewXPosition (double newXPosition) {
    myCenterX = newXPosition;
  }
  public void setNewYPosition (double newYPosition) {
    myCenterY = newYPosition;
  }
  public double getCenterX () {
    return myCenterX;
  }
  public double getCenterY () {
    return myCenterY;
  }
}
