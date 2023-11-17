class Spaceship extends Floater {   
  public Spaceship () {
    myColor = color(255,255,255);
    corners = 3;
    xCorners = new int [] {-8, 16, -8, -2};
    yCorners = new int [] {-8, 0, 8, 0};
    myCenterX = 250; 
    myCenterY = 250;
    myXspeed = 0;
    myYspeed = 0;
  }
  
  public void hyperspace () {
    myXspeed = 0;
    myYspeed = 0;
    myCenterX = (int)(Math.random()*490); 
    myCenterY = (int)(Math.random()*490);
  }
}
