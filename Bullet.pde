Bullet bullet;
class Bullet {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float size;
  float lifespan;
  Bullet(PVector bullet) {
    location = bullet.copy();
    acceleration = new PVector(2, 0);
    velocity = new PVector(2, 0);
    size = 8;
    lifespan = 25;
  }
  void run() {
    update();
    display();
  }
  void update() {
    velocity.add(acceleration);
    location.add(velocity);
    //lifespan-= 1;
    //println("lifespan = " + lifespan);
  }
  void display() {
    stroke(5);
    fill(255, 0, 0);
    ellipse(location.x, location.y, size, size);
    println("location.x = "+ location.x);
    println("location.y = "+ location.y);
  }
  boolean isDead() {
    if (location.x >= width) {
      return true;
    } else {
      return false;
    }
  }
}
void runBulletSystem() {

  bullets.add(new Bullet(new PVector(ship.x, ship.y)));
  Iterator<Bullet> it = bullets.iterator();
  while (it.hasNext()) {
    Bullet bullet = it.next();
    bullet.run();
    if (bullet.isDead()) {   
      it.remove();
      println("particle is dead");
    }
  }
}
