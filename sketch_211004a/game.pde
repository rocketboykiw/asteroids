
void game() {
  int i= 0;
  while (i<myObjects.size()) {
    gameObject myObj =myObjects.get(i);
    myObj.show();
    myObj.act();

    if (myObj.lives == 0) {
      myObjects.remove(i);
    } else {
      i++;
    }
// if (myObj instanceof ship) {
//print (myObj.lives);
//}  
}

}

void gameClicks() {
}
