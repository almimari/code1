//setup function tells processing what to do before we start running 

  int x;
  int y;
  
void setup() {
  size(1000, 600);
  y = 1;
  x = 1;
  int area = width * height;

}

//draw runs every frame 

  
void draw () {  
  //arc(mouseX*2, mouseY*2, 1+mouseX, 2+mouseY, 100, 200);
  //^error code for mixing 'active' and 'static' modes 
  //i didn't have the void draw() function in there
  //fill(200, 0, 100);
  
  
  //point(300, 400);
  //point(500, 400);
  //point(700, 400);
  //^did not work at first, point was too small so adjusted stroke to make it work. Stroke didn't really help either so i made the storke weight extra thick. 
  //stroke(204, 102, 0);
  //strokeWeight(10);
  
//line(mouseX*2, mouseY*3, mouseX, mouseY);
  
  quad(mouseX,mouseY, mouseX, mouseY, mouseX, 300, 150, 400);
  
}