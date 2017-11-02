class Happy {

  float x; 
  float y;
  float dx;
  float dy;
  color col;
  float r = 40;

  Happy() {
    x = width/2;
      y = height/2;
      dx = random(-2, 2);
    dy = random(-2, 2);
    col = color(r, g, b);
  }

  void display() {
    noStroke();
    fill(map(dx, -2, 2, col(255, 153, 102), col(193, 65, 14)));
    fill(map(dy, -2, 2, col(255, 153, 102), col(193, 65, 14)));
    ellipse(x, y, r*2, r*2);
  }

  void update() {
    
  }}