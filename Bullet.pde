class Bullet extends Floater {
  public Bullet (Spaceship ship) {
    myCenterX = ship.getX();
    myCenterY = ship.getY();
    myPointDirection = ship.getPointDirection();
    //myXspeed = ship.getSpeedX();
    //myYspeed = ship.getSpeedY();
    myColor = color(256,256,256);
    accelerate(8);
  }
  public void show() {
    fill(myColor);
    stroke(myColor);
    ellipse((float)myCenterX, (float)myCenterY, 8, 8);
  }
  
  public double getOtherX(){
    return myCenterX;
  }
  public double getOtherY(){
    return myCenterY;
  }
}
