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
  bob.show();
  bob.move();
  for(int j = 0; j < tom.size(); j++) {
    tom.get(j).show();
    tom.get(j).move();
    distance = dist((float)bob.getX(),(float)bob.getY(),(float)tom.get(j).getX(),(float)tom.get(j).getY());
    if (distance < 6) {
      tom.remove(j);
      break;
      }
    for (int m = 0; m < sam.size(); m++) {
      sam.get(m).show();
      sam.get(m).move();
      distBullAst = dist((float)sam.get(m).getX(),(float)sam.get(m).getY(),(float)tom.get(j).getX(),(float)tom.get(j).getY());
      if (distBullAst < 15) {
        tom.remove(j);
        sam.remove(m);
        break;
      }
    }
  }
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
  if (key == ' ') {
    sam.add(new Bullet(bob));
  }
}
