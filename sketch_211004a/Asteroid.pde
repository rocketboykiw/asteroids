class Asteroid extends gameObject {

  Asteroid() {
    al =18;
    lives = 1;
    location = new PVector (random(0, width), random (0, height));
    velocity = new PVector (0, 1);
    velocity.rotate(random(0, TWO_PI) );
    size = 100;
  }

  Asteroid(int s, float x, float y) {
    al = 18;
    lives = 1;
    location = new PVector (x, y);
    velocity = new PVector (0, 1);
    velocity.rotate(random(0, TWO_PI) );
    size = s;
  }

  void show() {
    noFill();
    stroke(255); 
    ellipse(location.x, location.y, size, size);
  }

  void act() {
    super.act(); 

println(al);
    int i= 0;
    while (i<myObjects.size()) {
      gameObject myObj =myObjects.get(i);
      if (myObj instanceof Bullet) {
        if (dist(location.x, location.y, myObj.location.x, myObj.location.y)<= size/2 + myObj.size) {
          myObj.lives= 0;
          lives = 0;
          al--;
          if (al == 0) {
            mode = gameOver;
          }
          if (size>50) {
            myObjects.add(new Asteroid(size/2, location.x, location.y));
            myObjects.add(new Asteroid(size/2, location.x, location.y));
          }
        }
      }

      i++;

      if (myObj instanceof ship) {
        if (dist(location.x, location.y, myObj.location.x, myObj.location.y)<= size/2 + myObj.size) {

          if (myObj.immune >50) {
            myObj.lives = myObj.lives - 1;
            myObj.immune = 0;

            if (myObj.lives == 0) {
              mode = gameOver;
            }
          }
        }
      }
    }
  }
}
