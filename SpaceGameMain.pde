import java.util.Iterator;
ArrayList<Particle> stars;
ArrayList<Asteroid> asteroids;
ArrayList<Bullet> bullets;
void setup() {
  size(800, 800);
  lastAsteroid = 0;
  lastStar = 0;
  ship = new SpaceShip(width/2,height/2);
  laser = new Laser(0,0);
  inputHandler = new Mover(ship);
  hit = new Collision(bullet.bulletLocation,asteroid.asteroidLocation);
  asteroid = new Asteroid(new PVector(width,random(height)));
  asteroids = new ArrayList<Asteroid>();
  star = new Particle(new PVector(random(width),random(height)));
  stars = new ArrayList<Particle>();
  bullet = new Bullet(new PVector(ship.x,ship.y));
  bullets = new ArrayList<Bullet>();
}
void draw(){
  background(0);
  runStarSystem();
  runAsteroids();
  inputHandler.handle();
  ship.show();
  ship.setShipBoundaries();
}
