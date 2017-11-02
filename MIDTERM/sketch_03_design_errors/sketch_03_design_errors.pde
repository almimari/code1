// QUESTION 3
// Make the lines follow the mouse as a trail behind the mouse position correctly
// The position is off and so is the assignment

//TECHNICALLY THE LINES ARE FOLLOWING THE MOUSE AS A TRAIL!!

float[] xPositions = new float[100];
float[] yPositions = new float[100];

void setup() {
  size(600, 600);
}

void draw() {
  background(255);
  for (int i = 0; i < xPositions.length - 1; i++) {
    line(xPositions[i], yPositions[i], mouseX, mouseY);
  }
 

  for (int i = xPositions.length - 1; i > 0; i--) {
    xPositions[i] = xPositions[i-1];
    yPositions[i] = yPositions[i-1];
  }

  xPositions[0] = mouseY;
  yPositions[0] = mouseX;
}