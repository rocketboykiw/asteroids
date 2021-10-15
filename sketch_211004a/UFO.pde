class UFO extends gameObject {
  //instance variables
 
 
  int spawn;
  //constructor
  UFO() {

    //vy = myShip.location.y - location.y;
    //vx = myShip.location.x - location.x;
  
    lives = 1;
    size = 100;

    //where the UFO will spawn code
    spawn = int(random(0, 4));
    if (spawn == 0 ) {
      location = new PVector (0, random(0, height));
      velocity = new PVector(2, 0);
      velocity.setMag(1.5);
    }
    if (spawn == 1 ) {
      location = new PVector (width, random(0, height));
      velocity = new PVector(-2, 0);
      velocity.setMag(1.5);
    }
    if (spawn == 2 ) {
      location = new PVector (random(0, width), 0);
      velocity = new PVector(0, 2);
      velocity.setMag(1.5);
    }
    if (spawn == 3 ) {
      location = new PVector (random(0, width), height);
      velocity = new PVector(0, -2);
      velocity.setMag(1.5);
    }




  }

  void show() {

    fill(0);
   // ellipse(location.x, location.y - 20, 35, 30);
    ellipse(location.x, location.y, 70, 40);
  }

  void act() {
    super.act();
    
   
    }

}
    
   
      
    
 
