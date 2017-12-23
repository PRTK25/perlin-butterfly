class Walker {
  PVector location1;
  PVector location2;
  PVector location3;
  PVector location4;

  PVector noff1;
  

  Walker() {
    
   
    location1 = new PVector(width/2, height/2);
    location2 = new PVector(width/2, height/2);
    location3 = new PVector(width/2, height/2);
    location4 = new PVector(width/2, height/2);
    noff1 = new PVector(random(1000),random(1000));
      }

  void display() {
    strokeWeight(2);
    fill(127);
    
    
    stroke(255,50,50,5);
    line(location1.x, location1.y,width/2, height/2);
    
    stroke(255,50,50,5);
    line(location2.x, location2.y,width/2, height/2);
    
    stroke(255,5);
    line(location3.x, location3.y,width/2, height/2);
    
    stroke(255,5);
    line(location4.x, location4.y,width/2, height/2);
    
    
    }

   void walk() {
    
        
    noiseDetail(20,0.4);
    location1.x = map(noise(noff1.x),0,1,width/2,width);
    location1.y = map(noise(noff1.y),0,1,height/2,height);
    
    location2.x = map(noise(noff1.x),0,1,width/2,0);
    location2.y = map(noise(noff1.y),0,1,height/2,height);
    
    location3.x = map(noise(noff1.x),0,1,width/2,width);
    location3.y = map(noise(noff1.y),0,1,height/2,0);
    
    location4.x = map(noise(noff1.x),0,1,width/2,0);
    location4.y = map(noise(noff1.y),0,1,height/2,0);
    
    
    
    noff1.add(0.001,0.001,0);
    
  }
}
