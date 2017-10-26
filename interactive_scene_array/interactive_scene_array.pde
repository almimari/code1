boolean switchState1 = false;
boolean switchState2 = false;
boolean switchState3 = false;


float switchPosX1 = 150;
float switchPosY1 = 300;
float switchPosX2 = 300;
float switchPosY2 = 300;
float switchPosX3 = 450;
float switchPosY3 = 300;
float switchRadius = 50;


void setup() {
  size(600, 600);
  ellipseMode(CENTER);
}

void draw() {



  //first ellipse
  background(255);
  if (switchState1) {
    background(random(255), random(255), random(255));
  } else {
    background(255);
  }

  ellipse(switchPosX1, switchPosY1, switchRadius * 2, switchRadius * 2);



  //second ellipse
  if (switchState2) {
    strokeWeight(random(50));
  } else {
    background(255);
  }
  ellipse(switchPosX2, switchPosY2, switchRadius*2, switchRadius*2); 



  //third ellipse 
  if (switchState3) {
  } else {
    background(0);
  }
  ellipse(switchPosX3, switchPosY3, switchRadius*2, switchRadius*2);
}



void mousePressed() {
  if (dist(mouseX, mouseY, switchPosX1, switchPosY1) < switchRadius) {
    switchState1 = !switchState1;
  }
  if (dist(mouseX, mouseY, switchPosX2, switchPosY2) < switchRadius) {
    switchState2 = !switchState2;
  }
  if (dist(mouseX, mouseY, switchPosX3, switchPosY3) < switchRadius) {
    switchState3 = !switchState3;

  }
}