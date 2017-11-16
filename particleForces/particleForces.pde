ArrayList<Particle> particles = new ArrayList<Particle>();

void setup() {
  //float c = color;
  size(1000, 600);
}

void draw() {
    background(255, 225, 230);
  particles.add(new Particle(width/2, height/2));
  
  for (int i = 0; i < particles.size(); i++) {
    Particle p = particles.get(i);
    p.addRepel(mouseX, mouseY, 50);
    p.addRepel(100, 50, 50);
    p.addRepel(200, 500, 25);
    p.addRepel(700, 500, 50);
    p.update();
    p.display();
    
    if (p.life < 0) {
      particles.remove(i);
    }
  }
}