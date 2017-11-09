float x;
float y;
float xAngle;
float yAngle;
float xAmplitude;
float yAmplitude;
float xRate;
float yRate;

void setup() {
  size(700, 700);
  noStroke();
  textAlign(CENTER, CENTER);
  rectMode(CENTER);

  xAngle = 200;
  yAngle = 200;
  xAmplitude = 100;
  yAmplitude = 100;
  xRate = 0.1;
  yRate = 0.1;
}

void draw() {
  fill(180, 214, 0);
  stroke(random(100, 250), random(160, 240), 0);

  xAngle += xRate;
  yAngle += yRate;
  x = width/2 + sin(xAngle) * xAmplitude;
  y = height/2 + cos(yAngle) * yAmplitude;
  xAmplitude++;
  yAmplitude++;
  fill(80);
  rect(x, y, 200, 200);


}