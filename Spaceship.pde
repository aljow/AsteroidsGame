class Spaceship extends Floater {   
  public Spaceship () {
    myColor = color(255,255,255);
    corners = 4;
    xCorners = new int [] {-8, 16, -8, -2};
    yCorners = new int [] {-8, 0, 8, 0};
    myCenterX = 250; 
    myCenterY = 250;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
  }
  
  public void hyperspace () {
    myXspeed = 0;
    myYspeed = 0;
    myCenterX = (int)(Math.random()*490); 
    myCenterY = (int)(Math.random()*490);
    myPointDirection = (int)(Math.random()*360);
  }
  
  public double getX() {
    return myCenterX;
  }
  public double getY() {
    return myCenterY;
  }
  public double getPointDirection() {
    return myPointDirection;
  }
  //public double getSpeedX() {
  //  return myXspeed;
  //}
  //public double getSpeedY() {
  //  return myYspeed;
  //}
}
