class Asteroid extends Floater {
    private int speedRot;
    public Asteroid () {
    corners = 6;
    xCorners = new int [] {-12,-12,4,12,2,-16};
    yCorners = new int [] {2,12,20,2,-12,-8};
    speedRot = (int)(Math.random()*7)-3;
    myCenterX = (int)(Math.random()*256);
    myCenterY = (int)(Math.random()*256);
    myColor = color(256,256,256);
    myXspeed = (int)(Math.random()*5)-2;
    myYspeed = (int)(Math.random()*5)-2;
  }
  public void move () {
    while (speedRot == 0) {
      speedRot = (int)(Math.random()*7)-3;
    }
    while (myXspeed == 0) {
      myXspeed = (int)(Math.random()*5)-2;
    }
    while (myYspeed == 0) {
      myYspeed = (int)(Math.random()*5)-2;
    }
    super.move();
    turn(speedRot);
  }
}
