class Spaceship extends Floater
{
  public Spaceship() {
    corners = 3;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = - 8;
    yCorners[0] = -8;
    xCorners[1]= 16;
    yCorners[1] = 0;
    xCorners[2] = -8;
    yCorners[2] = 8;
    myColor = color(255, 255, 255);
    myCenterX = (double)(Math.random()*width);
    myCenterY= (double)(Math.random()*height);
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 360;
  }
  public void setXspeed (double xSpeed) {
    myXspeed = xSpeed;
  }
  public void setYspeed (double ySpeed) {
    myYspeed = ySpeed;
  }
  public void setNewXPosition (double newXPosition) {
    myCenterX = newXPosition;
  }
  public void setNewYPosition (double newYPosition) {
    myCenterY = newYPosition;
  }
  public void setNewPointDirection (double newPointDirection) {
    myPointDirection = newPointDirection;
  }
  public double getXspeed() {
    return myXspeed;
  }
  public double getYspeed() {
    return myYspeed;
  }
  public double getCenterX() {
    return myCenterX;
  }
  public double getCenterY() {
    return myCenterY;
  }
  public double getPointDirection() {
    return myPointDirection;
  }
}
