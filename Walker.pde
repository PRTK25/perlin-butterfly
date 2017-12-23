class Walker {
  PVector location1;
  PVector location2;
  PVector location3;
  PVector location4;

  PVector noff1,noff2,noff3,noff4;
  
  

  Walker() {
    //location1 = new PVector(width/2, height/2);
   
    location1 = new PVector(width/2, height/2);
    location2 = new PVector(width/2, height/2);
    location3 = new PVector(width/2, height/2);
    location4 = new PVector(width/2, height/2);
    noff1 = new PVector(random(1000),random(1000));
    noff2 = new PVector(random(500),random(500));
    noff3 = new PVector(random(250),random(250));
    noff4 = new PVector(random(125),random(125));
  }

  void display() {
    strokeWeight(2);
    fill(127);
    //int red=(int) random(0,255);
    //int green=(int) random(0,255);
    //int blue=(int) random(0,255);
    //stroke(red,green/10,blue/10,10);
    stroke(255,50,50,5);
    line(location1.x, location1.y,width/2, height/2);
    //stroke(red,green/10,blue/10,10);
    stroke(255,50,50,5);
    line(location2.x, location2.y,width/2, height/2);
    //stroke(red/10,green/10,blue,10);
    stroke(255,5);
    line(location3.x, location3.y,width/2, height/2);
    //stroke(red/10,green/10,blue,10);
    stroke(255,5);
    line(location4.x, location4.y,width/2, height/2);
    
    
    
    //line(mouseX, mouseY,location1.x, location1.y);
    //line(location2.x, location2.y,mouseX, mouseY);
  }

  // Randomly move up, down, left, right, or stay in one place
  void walk() {
    
    /*location1.x = map(noise(noff1.x),0,1,0,width);
    location1.y = map(noise(noff1.y),0,1,0,height);
    
    location2.x = map(noise(noff2.x),0,1,0,width);
    location2.y = map(noise(noff2.y),0,1,0,height);
    
    location3.x = map(noise(noff3.x),0,1,0,width);
    location3.y = map(noise(noff3.y),0,1,0,height);
    
    location4.x = map(noise(noff4.x),0,1,0,width);
    location4.y = map(noise(noff4.y),0,1,0,height);*/
    
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
    noff2.add(0.01,0.01,0);
    noff3.add(0.01,0.01,0);
    noff4.add(0.01,0.01,0);
    
  }
}
