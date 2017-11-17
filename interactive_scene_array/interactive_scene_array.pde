boolean switchState1 = false;
boolean switchState2 = false;
boolean switchState3 = false;

int numSwitches = 10;

float[] switchPosX = new float[numSwitches];
float[] switchPosY = new float[numSwitches];
float[] switchRadius = new float[20];


void setup() {
  size(800, 800);
  ellipseMode(CENTER);
}

void draw() {
  // ellipse
  for(int i=0; i<numSwitches; i++) {
  if (switchPosX[i]>=3) {
    strokeWeight(random(50));
  } else if (switchPosY[i]>3 && switchPosY[i]<10) {
    fill(random(140, 255), 140, 100);
  } else if (switchPosX[i]>=10) {
    color(random(255));
  }
  fill(0);
  ellipse(switchPosX[i], switchPosY[i], switchRadius[i]*2, switchRadius[i]*2); 

  }
}