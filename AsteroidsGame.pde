float distance;
float distBullAst;
Spaceship bob = new Spaceship(); 
Star [] sue = new Star[100];
ArrayList <Bullet> sam = new ArrayList <Bullet>(); 
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
    distance = dist((float)bob.getX(),(float)bob.getY(),(float)tom.get(j).myCenterX,(float)tom.get(j).myCenterY);
    if (distance < 15) {
      tom.remove(j);
      break;
    }
  }
  for (int m = 0; m < sam.size(); m++) {
    if (sam.get(m).getOtherX()>499 || sam.get(m).getOtherX()<1 || sam.get(m).getOtherY() > 499 || sam.get(m).getOtherY() < 1) {
      sam.remove(m);
    } else {
      sam.get(m).show();
      sam.get(m).move();
      for (int r = 0; r < tom.size(); r++) {
        distBullAst = dist((float)sam.get(m).getOtherX(),(float)sam.get(m).getOtherY(),(float)tom.get(r).myCenterX,(float)tom.get(r).myCenterY);
        if (distBullAst < 15) {
          tom.remove(r);
          sam.remove(m);
          break;
        }
      }
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
    bob.accelerate(0.07);
  }
  if (keyCode == ENTER) {
    bob.hyperspace();
  }
  if (key == ' ') {
    sam.add(new Bullet(bob));
  }
}
