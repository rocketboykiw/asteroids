
void intro() {
  background(255);

  //start button--------------------------------------------------------
  if (mouseX > 300 && mouseX < 500 && mouseY > 450 && mouseY <550) {
    fill (0, 255, 0);
  } else {
    fill (255, 0, 0);
  }
  strokeWeight(0);
  rect (400, 500, 200, 100);
  fill (0);
  textSize(58);
 textFont(night);
  text("START", 310, 520);




}

void introClicks() {
  if (mouseX > 300 && mouseX < 500 && mouseY > 450 && mouseY <550) {
    mode = game;
    
  }
}
