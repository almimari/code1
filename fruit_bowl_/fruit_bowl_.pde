//fruit bowl drawing with fruit basket, containing a banana, an apple, and a peach on a white background
//interaction: when you move the mouse up and down, the apple will move in and out of the fruit basket
  color apple;
  color bowl;
  color background;
  float basketCenterX = 400;
  float basketCenterY = 400; 
  PImage peach;

void setup () {
  size (800, 800);
  
  //establish colors
  apple = color(random(255), random(255), random(255));
  bowl = color(128, 0, 0);
  background = color(232, 230, 255);
  
  //PImage
  peach = loadImage("peach.png");
  imageMode(CENTER);
  
}

void draw () {
  background(background);
  float basketX = 400;
  float basketY = 400;
  float basketW = 500;
  float basketH = 400;

  float appleX = basketCenterX-10;
  float appleY = basketCenterY-10;
  float fallingApple = mouseY * 0.7;
  float movingPeach = mouseX * 0.1;
  float risingApple = mouseY+20*0.7;


  
  
  //basket
  drawBasket(basketX, basketY, basketW, basketH);
  basketCover(150, 200, 650, 200, 650, 400, 150, 400);
  
  //peach
  //drawPeach(basketCenterX+120 + movingPeach, basketCenterY, 90, 90);
  pushMatrix();
  translate(width/2, height/2);
  image(peach, 0, 0, peach.width, peach.height);
  popMatrix();
 
  //apple
  drawApple(appleX, appleY + fallingApple, 150, 170);
//second apple rotating around first apple using pushmatrix
pushMatrix(); 
translate (appleX, appleY);
scale(0.3);
rotate(radians(mouseX+1));
drawApple(appleX-150, appleY + risingApple, 150, 170);
popMatrix();

//third apple rotating around second apple using pushmatrix
pushMatrix(); 
translate (appleX-150, appleY + risingApple);
scale(0.1);
rotate(radians(mouseX+1));
drawApple(appleX-150, appleY + risingApple, 150, 170);
popMatrix();


//banana
  drawBanana(basketCenterX+50, basketCenterY);
}

void drawBasket(float x, float y, float w, float h) {
   strokeWeight(1);
   fill(bowl);
   stroke(apple);
   ellipse(x, y, w, h);
}

//function below used to create semioval shape of basket
void basketCover (float x1, float y1, float x2, float y2, float x3, float y3, float x4, float y4) {
 noStroke();
 fill(background);
 quad(x1, y1, x2, y2, x3, y3, x4, y4);

}

void drawApple(float x, float y, float w, float h) {
  strokeWeight(0);
  fill(apple);
   ellipse(x, y, w, h);
   
}

//for banana, draw a line and an arc that intersect
void drawBanana(float x, float y) {
  strokeWeight(1);
  fill(255, 232, 20);
  arc(basketCenterX-100, basketCenterY-20, 80, 80, 0, PI+PI/7, PIE);
}

//use PImage for the peach
//void drawPeach(float x, float y, float w, float h) {
//  strokeWeight(1);
//  image(peach, 0, 0, peach.width, peach.height);
//    //ellipse(x, y, w, h);
//}