// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

Walker w;

void setup() {
   background(255);
  size(800, 600,P3D);
  frameRate(100);
  background(0);
  // Create a walker object
  w = new Walker();
}

void draw() {
  
  // Run the walker object
  w.walk();
  w.display();
}