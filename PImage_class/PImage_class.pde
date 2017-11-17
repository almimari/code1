 Water w;
PImage photo;

void setup() {
  size(1000, 1000);
  photo = loadImage("water.jpg");
  
  //for (int i = 0; i < w.length; i++) {
  //  w[i] = new Water(width/2, height/2);)  //}
  
}

void draw() {
  background(255);
  
  w.display();
  w.setSize(10);
}

void keyPressed() {
  image(photo, mouseX, mouseX);
}