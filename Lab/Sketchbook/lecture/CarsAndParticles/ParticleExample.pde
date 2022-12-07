Particle bullet;
Particle firework;

void setupParticle() {
  
  bullet = new Particle(0,height/2,10,-10,
                        color(random(255),random(255),random(255)),
                        random(20));
  
  firework = new Particle(width/4,  height,
                    0,-10.0+random(10)-10.0, 
                    color(random(255),random(255),random(255)),
                    random(20) );
  
  
}



void drawParticle() {
  background(255,255,255);
  bullet.display();
  bullet.move();
  
  firework.display();
  firework.move();
  
}
