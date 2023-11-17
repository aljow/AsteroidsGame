class Star {
  private int myColor, myX, myY, mySize;
  public Star() {
    myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
    mySize = (int)(Math.random()*7);
  }
  public void show() {
    noStroke();
    fill(myColor);
    ellipse(myX,myY,mySize,mySize);
  }
}
