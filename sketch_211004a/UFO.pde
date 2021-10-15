class UFO extends gameObject {

  int spawn;
  UFO() {
    lives = 1;

    //location = new PVector(width/2, height/2);
    //velocity = new PVector (0,1);
      
    size = 100;
spawn = int (random(0,4));  
if(spawn == 0){
  location = new PVector(0, random(0,height));
   velocity = new PVector (2,0);
   velocity.setMag(1.5);
}
if(spawn == 1){
  location = new PVector(width, random(0,height));
   velocity = new PVector (-2,0);
     velocity.setMag(1.5);
}
if(spawn == 2){
  location = new PVector(0, random(0,height));
   velocity = new PVector (0,2);
     velocity.setMag(1.5);
}
if(spawn == 4){
  location = new PVector(0, random(0,height));
   velocity = new PVector (0,-2);
     velocity.setMag(1.5);
}

}

  void act() {
    pushMatrix();
    //translate (location.x, location.y);

    fill(255 );
    stroke(255);
    strokeWeight(5);
    ellipse(location.x, location.y, size/3, size/3);

    popMatrix();
  }

  void show() {
    super.act();
  }
}
