void gameOver1() {
  background(0, 255, 0);
  fill (0);
  textSize(110);
  text ("WINNER", 200, 300);



  if (mouseX > 300 && mouseX < 500 && mouseY > 450 && mouseY <550) {
    fill (255, 0, 0);
  } else {
    fill (0, 100, 0);
  }

  strokeWeight(5);

  rect (400, 500, 200, 100);
  fill (0);
  textSize(30);
  text("GO AGAIN", 325, 520);
}
void gameOver1Clicks() {


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
  myObjects.add(new UFO());
  
  }
}
