ParticleSystem particlesystem;

float spawnSize;
float spawnX,spawnY;
PImage particleImage;
void setup() {
  fullScreen(P2D);
  //size(600,600);
  particlesystem = new ParticleSystem(0.6);
  particleImage = loadImage("Snowflake.png");
  spawnX = random(width);
  spawnY = 0;
}

void draw() {
  background(0);
  spawnX = random(width);
  spawnY = 0;
  spawnSize = random(15, 35);
  particlesystem.addParticle(particleImage, spawnX, spawnY, spawnSize, spawnSize);
  particlesystem.updateParticles();
  particlesystem.displayParticles();
}
