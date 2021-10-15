

void gameOver() {
  background(255, 0, 0);
  fill (0);
  textSize(110);
  text ("GAME OVER", 100, 300);


  if (mouseX > 300 && mouseX < 500 && mouseY > 450 && mouseY <550) {
    fill (0, 255, 0);
  } else {
    fill (255, 0, 0);
  }

  strokeWeight(5);

  rect (400, 500, 200, 100);
  fill (0);
  textSize(30);
  text("GO AGAIN", 325, 520);
}
void gameOverClicks() {


  if (mouseX > 300 && mouseX < 500 && mouseY > 450 && mouseY <550) {

    mode = intro;
 
 
      myShip = new ship();
  myObjects = new ArrayList<gameObject>();
  myObjects.add(myShip);
  myObjects.add(new Asteroid());
  myObjects.add(new Asteroid());
  myObjects.add(new Asteroid());
  myObjects.add(new Asteroid());
  myObjects.add(new Asteroid());
  myObjects.add(new Asteroid());    
  
  
  }
}
