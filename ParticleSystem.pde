public class ParticleSystem {
  ArrayList<Particle> particles = new ArrayList<Particle>();
  public float gravity;
  ParticleSystem(float gravity) {
    this.gravity = gravity;
  }
  
  void updateParticles() {
    for(int i = 0; i < this.particles.size(); i++) {
      if(particles.get(i).pos.y > height) {
        particles.remove(i);
      } else {
        particles.get(i).update();
      }
    }
  }
  
  void displayParticles() {
    for(int i = 0; i < this.particles.size(); i++) {
      particles.get(i).display();
    }
  }
  
  void addParticle(PImage image,float x,float y,float w,float h) {
    this.particles.add(new Particle(image,x,y,w,h,gravity));
  }
  
  void clearParticles() {
    particles.clear();
  }
}
