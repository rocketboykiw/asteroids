class UFO extends gameObject {

  //instance variables
  int spawn;

  //constructor
  UFO() {
    lives = 1;
    size = 100;

    spawn = int(random(0, 4));
    if (spawn == 0 ) {
      location = new PVector(-50, random(-50, height-50));
      velocity = new PVector(2, 1);
    }
    if (spawn == 1 ) {
      location = new PVector(height + 50, random(-50, height-50)); // right
      velocity = new PVector(-2, -1);
    }
    if (spawn == 2 ) {
      location = new PVector(random(-50, width-50), -50);  // top
      velocity = new PVector(1, 2);
    }
    if (spawn == 3 ) {
      location = new PVector(random(-50, width-50), width-50);  // bottom
      velocity = new PVector(-1, -2);
    }
  }

  void show() {
    fill(0);
    ellipse(location.x, location.y, 70, 40);
  }

  void act() {
    super.act();
    int b= 0; 

    while (b<myObjects.size()) {
      gameObject myObj =myObjects.get(b);

      if (myObj instanceof Bullet) {
        if (dist(location.x, location.y, myObj.location.x, myObj.location.y)<= size/2 + myObj.size) {
          myObj.lives= 0;
          lives = 0;
          //  myObjects.add(new Particals(location.x, location.y));
        }
      }
    }
  }
} 
