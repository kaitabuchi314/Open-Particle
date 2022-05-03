class Particle {
  PVector pos;
  PVector vel;
  float w;
  float h;
  float grav;
  PImage img;
  
  Particle(PImage img, float x,float y,float w,float h,float grav) {
    this.pos = new PVector(x,y);
    this.vel = new PVector(0,0);
    this.w = w;
    this.h = h;
    this.img = img;
    this.grav = grav;
  }
  
  void update() {
    vel.add(new PVector(0,this.grav));
    pos.add(vel);
  }
  
  void display() {
    image(this.img,this.pos.x,this.pos.y,this.w,this.h);
  }
}
