class Bullet extends Floater {
  public Bullet (Spaceship ship) {
    myCenterX = ship.getX();
    myCenterY = ship.getY();
    myPointDirection = ship.getPointDirection();
    myColor = color(256,256,256);
    accelerate(0.6);
  }
  public void show() {
    fill(myColor);
    stroke(myColor);
    ellipse((float)myCenterX, (float)myCenterY, 8, 8);
  }
}
