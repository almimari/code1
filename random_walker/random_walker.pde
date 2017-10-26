float x;
float y;

void setup() {
  size(600, 600);
  background(255,105, 180);
  rectMode(CENTER);
  x = width/2;
  y = height/2;
  noStroke();
}

void draw() {
  float r = int(random(3));
  
  if (r == 0) {
    y -= 5;
  } else if (r == 1) {
    x += 5;
  } else if (r == 2) {
    y += 5;
  } else if (r == 3) {
    x -= 5;
  } 
  

  
  float w = map(mouseX, 0, width, 1, 10);
  float h = map(mouseY, 0, height, 1, 10);
   ellipse(x, y, w, h);
  
  float rr = map(mouseX, 0, width, 255, 0);
  float g = map (mouseY, 0, height, 255, 0);
  float b = int(random(100)); 
  
    fill(rr, g, b);
  
  float stroke = map(mouseX, 0, width, 0, 10);
  
  strokeWeight(stroke);
  
  float sc = map(mouseX, 0, 800, 0, 40);
  
  scale(sc);
 
}