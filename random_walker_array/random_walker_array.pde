//they all cluster together, I don't know why

int numWalkers = 20;
float[] x = new float[numWalkers];
float[] y = new float[numWalkers];
float[] r = new float[numWalkers];
color c[] = new color[100];

void setup() {
  size(800, 800);
  rectMode(CENTER);
  noStroke();


  for (int i = 0; i < numWalkers; i++) {
    r[i] = random(1, 30);
    x[i] = random(-50, 50);
    y[i] = random(-20, 20);
    c[i] = color(random(200,255), random(140,255), 155);
    //mapping scale
      float sc = map(r[i], 0, 800, 0, 20);
      scale(sc);
  }
}

void draw() {
  //colors
  background(255);

  //for loop with array
  for (int i=0; i < numWalkers; i++) {
    pushMatrix();
    translate(width/2, height/2);
    ellipse(x[0], y[i], r[i]*7, r[i]*7);
    ellipse(x[1], y[i], r[i]*2, r[i]*2);
    ellipse(x[2], y[i], r[i]*1, r[i]*1);
    fill(c[i]);

    //random walker ness
    float r = int(random(3));

    if (r <= 1) {
      y[i] +=3;
    } else if (r == 1) {
      x[i] -= 3;
    } else if (r == 2) {
      y[i] -= 3;
    } else if (r == 3) {
      y[i] += 3;
    }
    popMatrix();
  }


  //mapping stroke
  float stroke = map(0, 0, width, 0, 10);
  strokeWeight(stroke);



}