class particals extends gameObject {
  
   // instance variable
  int t;  
  PVector nudge;
 
 //constructor
  particals( float x, float y) { 
    lives = 1;
    size = 10;
    location = new PVector (x, y);
    velocity = new PVector (0, 1);
    velocity.rotate( random(0, TWO_PI) ); 
    t = 255;
  }
  void show() {
    noStroke();
    fill(50,200,20, t);
    square(location.x, location.y, size);
  }
  void act() {
    super.act();
    location.add(velocity);
    t = t - 5;
    if (t <= 0) lives = 0;
  }
}
