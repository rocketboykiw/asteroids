class UFO extends gameObject {
  
  UFO(){
   lives = 1;
    
     location = new PVector(width/2, height/2);
 velocity = new PVector (0, 1);  
 size = 100;
}
  
  void act(){
        pushMatrix();
    //translate (location.x, location.y);
   
    fill(255 );
    stroke(255);
    strokeWeight(5);
    ellipse(location.x, location.y, size/3, size/3);

    popMatrix();
  }
  
  void show(){
       super.act();
    
  
      
  }
  
  
  
}
