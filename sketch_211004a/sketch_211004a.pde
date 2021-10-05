boolean upKey, downKey, leftKey, rightKey, spaceKey;
ship myShip;
ArrayList<gameObject> myObjects;

void setup () {
  size (800, 600);
  imageMode(CENTER);
  myShip = new ship();
  myObjects = new ArrayList<gameObject>();
  myObjects.add(myShip);
  myObjects.add(new Asteroid());
  myObjects.add(new Asteroid());
  myObjects.add(new Asteroid());
}

void draw() {
  background(0);

  int i= 0;
  while (i<myObjects.size()) {
    gameObject myObj =myObjects.get(i);
    myObj.show();
    myObj.act();
    
    if (myObj.lives == 0){
     myObjects.remove(i); 
    }else{
     i++; 
    }
    
  }
}

void keyPressed() {
  if (keyCode == UP) upKey = true; 
  if (keyCode == DOWN) downKey = true; 
  if (keyCode == LEFT) leftKey = true; 
  if (keyCode == RIGHT) rightKey = true;
  if (key == ' ')      spaceKey = true;
}


void keyReleased() {
  if (keyCode == UP) upKey = false; 
  if (keyCode == DOWN) downKey = false; 
  if (keyCode == LEFT) leftKey = false; 
  if (keyCode == RIGHT) rightKey =false;
  if (key == ' ')      spaceKey =false;
}
