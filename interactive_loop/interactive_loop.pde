void setup() {
  size(800, 800, P3D);
}

void draw() {
  //first attempt at making a grid
  //background(255);
  //for(int x=0; x<=800; x+=10) {
  //  for(int y=0; y<=800; x+=10) {
  //  line(0, y, mouseX, y);
  //  line(x, 0, x, mouseY);
  //}
  
  
  //noStroke(0);

  background(255, 209, 220);
  translate(width/2, height/2);
  rotateX(radians(mouseX * 0.7));
  rotateZ(radians(mouseY * 0.7));
  for (int i = 0; i <= 10; i+=10) {
    for (int j = 0; j <= 10; j+=10) {
      for (int k = 0; k <= 10; k+=10) {  
        float x = map(i, 0, 10, -400, 400);
        float y = map(j, 0, 10, -400, 400);
        float z = map(k, 0, 10, -400, 400);
        pushMatrix();
        translate(map(x, 0, 800, 0, 800), y+20, z+20);
        fill(map(i, 0, 10, 0, 255), map(j, 0, 10, 0, 255), map(k, 0, 10, 0, 255));
        rotateX(radians(x + frameCount * 0.1));
        rotateY(radians(y + frameCount * 0.1));
        rotateZ(radians(z + frameCount * 0.1));
        lights();
        sphereDetail(mouseX / 50);
        sphere(250);
        popMatrix();
      }
    }
  }
}