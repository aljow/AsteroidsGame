float distance;
Spaceship bob = new Spaceship(); 
Star [] sue = new Star[100];
ArrayList <Asteroid> tom = new ArrayList <Asteroid>();
public void setup() {
  size(500,500);
  background(0,0,0);
  for(int i = 0; i < sue.length; i++) {
    sue[i] = new Star();
  }
  for(int j =0; j < 7; j++) {
    tom.add(new Asteroid());
  }
}

public void draw() {
  background(0);
  for(int i = 0; i < sue.length; i++) {
    sue[i].show();
  }
  for(int j = 0; j < tom.size(); j++) {
    tom.get(j).show();
    tom.get(j).move();
    distance = dist((float)bob.getX(),(float)bob.getY(),(float)tom.get(j).getX(),(float)tom.get(j).getY());
    if (distance < 6) {
      tom.remove(j);
      }
  }
  bob.show();
  bob.move();
}

public void keyPressed() {
  if (key == 'c') {
    bob.turn(15);
  }
  if (key == 'z') {
    bob.turn(-15);
  }
  if (key == 'x') {
    bob.accelerate(1);
  }
  if (keyCode == ENTER) {
    bob.hyperspace();
  }
}
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
    System.out.println(myXspeed);
    System.out.println(speedRot);
  }
}
