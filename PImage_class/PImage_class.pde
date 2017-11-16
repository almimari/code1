//create an array of 100 balls
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
  
  w.display;
  
  //for (int i = 0; i < w; i++) {
  //  w.display; }
}

void keyPressed() {
  image(photo, mouseX, mouseX);
}