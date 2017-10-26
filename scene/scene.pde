//fruit bowl drawing with fruit basket, containing a banana, an apple, and a peach on a white background
//interaction: when you move the mouse up and down, the apple will move in and out of the fruit basket


void setup () {
  size (800, 800);
}

void draw () {
  background(232, 230, 255);
  float basketX = 400;
  float basketY = 400;
  float basketW = 500;
  float basketH = 400;
  float basketCenterX = 400;
  float basketCenterY = 400; 
  float appleX = basketCenterX-20;
  float appleY = basketCenterY-20;
  float fallingApple = mouseY * 0.7;
  float movingPeach = mouseX * 0.1;
  float risingApple = mouseY+20*0.7;
  
  drawBasket(basketX, basketY, basketW, basketH);
  basketCover(150, 200, 650, 200, 650, 400, 150, 400);
  drawApple(appleX, appleY + fallingApple, 150, 170);
  //I couldn't figre out how to get the risingApple variable to work and go the opposite way from falling apple. 
  drawApple(appleX-150, appleY + risingApple, 150, 170);
  drawPeach(basketCenterX+120 + movingPeach, basketCenterY, 90, 90);
  //could not figure out how to create a banana shape!
  //also could not figure out how to get the fruits behind the fruit basket but in front of the basketCover

}

void drawBasket(float x, float y, float w, float h) {
   noStroke();
   fill(128, 0, 0);
   ellipse(x, y, w, h);
}

//function below used to create semioval shape of basket
void basketCover (float x1, float y1, float x2, float y2, float x3, float y3, float x4, float y4) {
 strokeWeight(0);
 fill(232, 230, 255);
 quad(x1, y1, x2, y2, x3, y3, x4, y4);

}

void drawApple(float x, float y, float w, float h) {
  strokeWeight(0);
  fill(243, 45, 45);
   ellipse(x, y, w, h);
   
}

//for banana, draw a line and an arc that intersect
void drawBanana(float x, float y) {
  strokeWeight(1);
  fill(255, 232, 20);
  line(x, y, x, y);
  //arc(x, y, PI/3, 2*PI/3);
}

void drawPeach(float x, float y, float w, float h) {
  fill(236, 144, 147);
  strokeWeight(1);
  ellipse(x, y, w, h);
}