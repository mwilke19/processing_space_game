Asteroid asteroid;
int lastAdd;
int delay = 1000;

class Asteroid {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float size;
  Asteroid(PVector asteroid) {
    location = asteroid.copy();
    acceleration = new PVector(-.03, 0);
    velocity = new PVector(-.003, 0);
    size = random(25, 100);
  }//close Asteroid constructor
  void run() {
    update();
    display();
  }//close run()
  void update() {
    velocity.add(acceleration);
    location.add(velocity);
  }//close update()
  void display() {
    stroke(0);
    fill(127);
    ellipse(location.x, location.y, size, size);
  }//close display()
  boolean isOffScreen() {
    if (location.x < -size/2) {
      return true;
    } else {
      return false;
    }
  }//close isOffScreen()
}//close Asteroid class
void runAsteroids() {
  int current = millis();
  int deltaTime = current - lastAdd;
  if (lastAdd == 0 || deltaTime >= delay) {
    asteroids.add(new Asteroid(new PVector(width, random(height))));
    lastAdd = current;
  }
   Iterator<Asteroid> it = asteroids.iterator();
  while (it.hasNext()) {
    Asteroid asteroid = it.next();
    asteroid.run();
    if (asteroid.isOffScreen()) {
      it.remove();
      println("asteroid was removed");
    }
  }
}//close runAsteroids
