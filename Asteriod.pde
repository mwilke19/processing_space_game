Asteroid asteroid;
int lastAsteroid;
int delayAsteroid = 3000;

class Asteroid {
  PVector asteroidLocation;
  PVector velocity;
  PVector acceleration;
  float size;
  Asteroid(PVector asteroid) {
    asteroidLocation = asteroid.copy();
    acceleration = new PVector(-.03, 0);
    velocity = new PVector(-.003, 0);
    size = random(25, 100);
    asteroidLocation.add(size,0);
  }//close Asteroid constructor
  void run() {
    update();
    display();
  }//close run()
  void update() {
    velocity.add(acceleration);
    asteroidLocation.add(velocity);
  }//close update()
  void display() {
    stroke(0);
    fill(127);
    ellipse(asteroidLocation.x, asteroidLocation.y, size, size);
    //float distance = dist(asteroidLocation,bulletLocation);
    println("asteroidLocation.x = " + asteroidLocation.x);
    println("asteroidLocation.y = " + asteroidLocation.y);
    println("\n");
  }//close display()
  boolean isOffScreen() {
    if (asteroidLocation.x < -size/2) {
      return true;
    } else {
      return false;
    }
  }//close isOffScreen()
}//close Asteroid class
void runAsteroids() {
  int current = millis();
  int deltaTime = current - lastAsteroid;
  if (lastAsteroid == 0 || deltaTime >= delayAsteroid) {
    asteroids.add(new Asteroid(new PVector(width, random(height))));
    lastAsteroid = current;
  }
   Iterator<Asteroid> it = asteroids.iterator();
  while (it.hasNext()) {
    Asteroid asteroid = it.next();
    asteroid.run();
    if (asteroid.isOffScreen()) {
      it.remove();
      //println("asteroid was removed");
    }
  }
}//close runAsteroids
