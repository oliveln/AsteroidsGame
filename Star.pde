class Star //note that this class does NOT extend Floater
{
  private int myStarX;
  private int myStarY;
  public Star() {
    myStarX = (int)(Math.random()*width);
    myStarY = (int)(Math.random()*height);
  }
  public void show() {
    fill(255, 255, 0);
    ellipse(myStarX, myStarY, 3, 3);
  }

}
