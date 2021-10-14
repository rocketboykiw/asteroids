class particals extends gameObject {
  int t;
//PVector nudge;
 particals() {
    lives = 1;
    size =int(random(5,12));
    t = int(random(200,255));
    int i= 0;
    while (i<myObjects.size()) {
      gameObject myObj =myObjects.get(i);
    if (myObj instanceof Asteroid) {
    location = new PVector(myObj.location.x, myObj.location.y);
    //nudge = myShip.direction.copy();
  //  nudge.rotate(PI);
  //  nudge.setMag(30);
   // location.add (nudge);
    velocity = new PVector (0, 1);
    velocity.rotate(PI+random(-0.5,0.5));
    velocity.setMag(3);
  }
 }
 }
 
  void show() {
    noStroke();
    fill(255, 0, 0, t);
    square (location.x, location.y, size);
  }

  void act() {
    super.act();
    t =t -10;
    if (t <=0) lives =0;
  }
}
