int x = 0;
int y = 0;
float angle = 0;

void setup() {
  size(800,800);
  ellipseMode(CENTER);
  noStroke();
}

void draw() {
  angle += 5;
  y += 5;
  
  translate(x,y);
  rotate(radians(angle)); 
  
  float rColor = map(x, 0, width, 0, 255);
  float gColor = map(y, 0, height, 0, 255);
  float bColor = 200;
  
  float xScale = map(mouseX, 0, width, 0, 4);
  float yScale = map(mouseY, 0, height, 0, 4);
  
  scale(xScale, yScale);
  
  
  fill(rColor, gColor, bColor);
  ellipse(0, 0, mouseX * 0.5, mouseY * 0.5);
  
  if (y > height) {
    y = 0;
    x += 100;
  }
}