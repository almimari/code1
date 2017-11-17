ArrayList<Particle> particles = new ArrayList<Particle>();
PVector repelPoint1;
PVector repelPoint2;


void setup() {
  //float c = color;
  size(1000, 600);
  
repelPoint1 = new PVector(width/2, 100);
repelPoint2 = new PVector(width/2, height - 100);
}

void draw() {
    background(255, 225, 230);
  particles.add(new Particle(width/2, height/2));
  
  for (int i = 0; i < particles.size(); i++) {
    Particle p = particles.get(i);
    p.addRepel(mouseX, mouseY, 50);
    p.addRepel(repelPoint1.x, repelPoint1.y, 5);
    p.addRepel(repelPoint2.x, repelPoint2.y, 25);
    p.update();
    p.display();
    
    if (p.life < 0) {
      particles.remove(i);
    }
  }
}