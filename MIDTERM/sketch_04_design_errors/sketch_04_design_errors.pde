// QUESTION 4 -
// this is currently drawing an angled line of rectangles - it should draw a square grid.

void setup() {
  size(600, 600);
}

void draw() {
  for (int i = 0; i < 10; i++) {
    for (int j = 0; j < 10; j++) {
      rect(i*80, j*80, 35, 35);
    }
  }
}