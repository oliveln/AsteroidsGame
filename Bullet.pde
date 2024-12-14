class Bullet extends Floater{
   public Bullet(Spaceship firstShip){
     myCenterX = firstShip.getCenterX();
     myCenterY = firstShip.getCenterY();
     myPointDirection = firstShip.getPointDirection();
     accelerate(3);
   } 
   public void show(){
     fill(0,255,0);
     ellipse((float)myCenterX, (float)myCenterY, 10, 15);
   }
  public double getCenterX() {
    return myCenterX;
  }
  public double getCenterY() {
    return myCenterY;
  }
}
