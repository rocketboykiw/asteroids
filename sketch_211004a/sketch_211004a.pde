int mode;
final int intro= 0;
final int game = 1;
final int pause = 2;
final int gameOver = 3;
final int gameOver1 = 4;

boolean upKey, downKey, leftKey, rightKey, spaceKey;

ship myShip;
ArrayList<gameObject> myObjects;

PFont night ;

int al;
void setup () {

  size (800, 600);
   mode = intro;
  rectMode(CENTER);
  imageMode(CENTER);
  
  myShip = new ship();
  myObjects = new ArrayList<gameObject>();
  myObjects.add(myShip);
  myObjects.add(new Asteroid());
  myObjects.add(new Asteroid());
  myObjects.add(new Asteroid());
  myObjects.add(new Asteroid());
  myObjects.add(new Asteroid());
  myObjects.add(new Asteroid());
  myObjects.add(new UFO());

//fonts
night = createFont("Hey Comic", 58);


}

void draw() {
  background(0);

//textFont(night);




  if (mode == intro) {
    intro();
  } else if (mode == game) {
    game();
  } else if (mode == pause) {
    pause();
  } else if (mode == gameOver) {
    gameOver();
  } else if (mode == gameOver1){
    gameOver1();
  }else {
    println("Error: mode = " + mode);
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
