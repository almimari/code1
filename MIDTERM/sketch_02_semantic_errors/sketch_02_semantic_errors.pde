// QUESTION 2 - 
// Fix all the semantic errors so the code runs as expected

void setup() {
  size(800, 800);
  
  float aNumber = 1.1;
  float[] bunchONumbers = new float[10];

  for (int i = 0; i < bunchONumbers.length; i++) {
    println(bunchONumbers[i]);
  }
  
  boolean[] bunchOBools = new boolean[10];
  
  for (int i = 10; i < 0; i--) {
    bunchOBools[i] = true;
  }

  PImage img;
  img = loadImage("doge.jpg");

  image(img, img.width, img.height);
}