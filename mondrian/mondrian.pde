//setup function tells processing what to do before we start running 

  int x;
  int y;
  
  //start with square canvas
  //create one large red rectangle on top right corner
  //create yellow rectangle on top left corner
  //create white rectangle below yellow rectangle
  //create blue rectangle on bottom left corner
  //create two more white rectangles to the right of blue rectangle
  //give all of them black stroke with heavy stroke weight
  //make them move (mousex, mousey)
void setup() {
  size(800, 800);

  y = 0;
  x = 0;

}

void draw() {

  //yellow
//fill(255, 255, 0);
//rect(5,5, 200, 600);

////white
//fill(255, 255, 255);
//rect(5,500, 200, 200);

////blue
//fill(0, 0, 255);
//rect(5,700, 200, 100);

////white
//fill(255, 255, 255);
//rect(210,700, 475, 100);

////white
//fill(255, 255, 255);
//rect(695,700, 100, 100);

////red
//fill(255, 0, 0);
//rect(205,5, 688, 690);

//^^required a lot of trial and error as well as math on canvas space and how to position 

//animated & interactive version
  //yellow
fill(255, 255, 0);
rect(5+mouseY,5+mouseY, 200, 600);

//white
fill(255, 255, 255);
rect(5+mouseX,500+mouseX, 200, 200);

//blue
fill(0, 0, 255);
rect(5+mouseY,700+mouseY, 200, 100);

//white
fill(255, 255, 255);
rect(210+mouseX,700+mouseX, 475, 100);

//white
fill(255, 255, 255);
rect(695+mouseY,700+mouseY, 100, 100);

//red
fill(255, 0, 0);
rect(205+mouseX,5+mouseY, 688, 690);


stroke(000);
strokeWeight(10);

  
}