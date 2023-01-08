Particle star;
int lastStar;
int delayStar = 25;
class Particle {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float lifespan;
  float size;
  Particle(PVector star) {//handles position,displaying,lifetime,running background starfield
    location = star.copy();
    acceleration = new PVector(-.01, 0);
    velocity = new PVector(-.01, 0);
    lifespan = 255 ;
    size = random(1, 6);
  }//close Particle constructor
  void run() {//updates posistion and shape
    update();
    display();
    //println(lifespan);
    //println(" ");
  }
  void update() {//method to control position
    velocity.add(acceleration);
    location.add(velocity);
    lifespan -= 3.0;
  }
  void display() {//method to display ship on the screen
    stroke(0);
    fill(255);
    ellipse(location.x, location.y, size, size);
  }
  boolean isDead() {//method to track particle lifetime
    if (lifespan<0.0) {
      return true;
    } else {
      return false;
    }
  }
}//close Particle class
void runStarSystem() {//method to add stars to the screen and remove them when they are dead
  int current = millis();
  int deltaTime = current - lastStar;
  if(lastStar == 0 || deltaTime >= delayStar){
    stars.add(new Particle(new PVector(random(width), random(height))));
    lastStar = current;
  }
  Iterator<Particle> it = stars.iterator();
  while (it.hasNext()) {
    Particle star = it.next();
    star.run();
    if (star.isDead()) {
      it.remove();
      //println("particle is dead");
    }
  }
}//close runStarSystem()
