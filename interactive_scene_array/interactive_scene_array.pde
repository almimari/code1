boolean switchState1 = false;
boolean switchState2 = false;
boolean switchState3 = false;


float switchPosX1 = 150;
float switchPosY1 = 300;
float switchPosX2 = 300;int IMG_NUM = 10;

//create the image array of size 10
PImage[] pusheen = new PImage[IMG_NUM];

//store a variable that we'll use to draw a selected image from the array
int whichPusheen = 0;

void setup() {
  size(500,500);
  imageMode(CENTER);
  
  //load all the images into our array
  for (int i = 0; i < pusheen.length; i++) {
    pusheen[i] = loadImage("pusheen"+i+".jpg");    
  }
}

void draw() {
  background(210);
  
  //draw the image in the array at index position "whichPusheen"
  image(pusheen[whichPusheen], width/2, height/2);
  
  //we've discussed now the modulo operator (%) just a little bit.
  //can you figure out what this conditional statement is looking for?
  if (frameCount % 10 == 0) {
    whichPusheen++;
  }
  
  //bring the index variable back down to zero if it gets out of the array scope
  if (whichPusheen >= pusheen.length) {
    whichPusheen = 0;
  }
}
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