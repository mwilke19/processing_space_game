//I used this file to test the Particle class
import java.util.Iterator;
ArrayList<Particle> stars;

void setup() {
  size(800, 800);
  star = new Particle(new PVector(random(width),random(height)));
  stars = new ArrayList<Particle>();
}
void draw() {
  background(0);
  runStarSystem();
}
