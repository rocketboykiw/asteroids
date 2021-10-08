class ship extends gameObject {

  //1. instance variable
  PVector direction;
  int shotTimer, threshold;

  //2.constructor
  ship() {
    lives = 3;
    location = new PVector(width/2, height/2);
    velocity = new PVector (0, 0);
    direction = new PVector (0, -0.1);
    shotTimer =0;
    threshold =30;
    immune =50;
  }
  //3.behavior
  void show() {
    pushMatrix();
    translate (location.x, location.y);
    rotate(direction.heading());
    noFill();
    stroke(255);
    strokeWeight(5);
    triangle(-25, -12.5, -25, 12.5, 25, 0);

    popMatrix();
  }

  void act () {
    super.act();
    immune++;
    shotTimer++;

    if (upKey) {
      velocity.add(direction);
      myObjects.add(new fire());
    }
    if (downKey)velocity.sub(direction);
    if (leftKey)direction.rotate(-radians(5));
    if (rightKey)direction.rotate(radians(5));
    if (spaceKey && shotTimer >= threshold) {
      myObjects.add(new Bullet());
      shotTimer = 0;
    }
  }
}
