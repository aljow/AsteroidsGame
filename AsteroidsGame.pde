Spaceship bob = new Spaceship(); 
Star [] sue = new Star[100];
public void setup() {
  size(500,500);
  //frameRate(10);
  background(0,0,0);
  for(int i = 0; i < sue.length; i++) {
    sue[i] = new Star();
    //bob.show();
  }
}

public void draw() {
  background(0);
  for(int i = 0; i < sue.length; i++) {
    sue[i].show();
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
