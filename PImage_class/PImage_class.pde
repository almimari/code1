//create an array of 100 balls
Water[] w = new Water[100];
PImage photo;

void setup() {
  size(1000, 1000);
  photo = loadImage("water.jpg");
  
  for (int i = 0; i < w.length; i++) {
    for (int j=0; i<w.length; j++) {
    w[i] = new Water(width/2, height/2, colorize(map(i,0,w.length,0,255))  }
  }
}

void draw() {
  background(255);
  
  for (int i = 0; i < w.length; i++) {
    w[i].display();
  }
}

void keyPressed() {
  image(photo, mouseX, mouseX);
}