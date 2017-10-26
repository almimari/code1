int IMG_NUM = 43;

//create the image array of size 10
PImage[] cat = new PImage[IMG_NUM];

void setup() {
  size(1000,1000);
  imageMode(CENTER);
  
  //load all the images into our array
  for (int i = 0; i < cat.length; i++) {
    cat[i] = loadImage("cat"+i+".png");    
  }
}

void draw() {
  println();
  background(210);
  
  //if i want to use the 1D list to draw a grid,
  //i can do a 2D loop through our 1D array
  //what's the value of (int)sqrt(IMG_NUM)? why am i using it?
  for (int i = 0; i < (int)sqrt(IMG_NUM); i++) {
    for (int j = 0; j < (int)sqrt(IMG_NUM); j++) {
      
      //translating a 1D index from 2D positions = width * row + column
      int index = (int)sqrt(IMG_NUM) * j + i;
      
      //adding some fun transform stuff cause why not
      pushMatrix();
      translate(100 + i * 150, 100 + j * 150);
      rotate((frameCount) + i + j);
      image(cat[index], 0, 0, width/2, height/2);
      popMatrix();
    }
  }
  
}