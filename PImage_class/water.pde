
class Water {
  float x;   //x position
  float y;   //y position
  float dx;  //x velocity
  float dy;  //y velocity
  color c;   //color
  float s;   //size

  //constructor takes an x, y, and size value
  Water(float _x, float _y, float _s) {
    x = _x;
    y = _y;
    dx = random(-3, 3);  //set a random velocity
    dy = random(-3, 3);
    s = _s=(random(50,200));   // set a random size
  }

  // call this method to display the ball
  void display() {
    noStroke();
    image(photo, photo.width, photo.height);
  }


  
  // call this method to set the size of the ball (instead of accessing its' fields directly)
  void setSize(float size) {
    s = size;
  }
}