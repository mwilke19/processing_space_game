Bullet bullet;
class Bullet {
  PVector bulletLocation;
  PVector velocity;
  PVector acceleration;
  float size;
  float lifespan;
  Bullet(PVector bullet) {
    bulletLocation = bullet.copy();
    acceleration = new PVector(2, 0);
    velocity = new PVector(2, 0);
    size = 8;
    lifespan = 15        ;
  }
  void run() {
    update();
    display();
  }
  void update() {
    velocity.add(acceleration);
    bulletLocation.add(velocity);
    lifespan-= 1;
    println("lifespan = " + lifespan);
  }
  void display() {
    stroke(5);
    fill(255, 0, 0);
    ellipse(bulletLocation.x, bulletLocation.y, size, size);
    println("bulletLocation.x = "+ bulletLocation.x);
    println("bulletLocation.y = "+ bulletLocation.y);
    println("\n");           
  }
  boolean isDead() {
    if (bulletLocation.x >= width || lifespan <= 0             ) {
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
