import java.util.Iterator;
ArrayList<Particle> stars;
ArrayList<Asteroid> asteroids;
void setup() {
  size(800, 800);
  int x = width/2;
  int y = height/2;
  int speed = 5;
  lastAdd = 0;
  spaceShip = new SpaceShip(x,y,speed);
  inputHandler = new Mover(spaceShip);
  //asteroid = new Asteroid(x,y,speed);
  asteroid = new Asteroid(new PVector(width,random(height)));
  asteroids = new ArrayList<Asteroid>();
  star = new Particle(new PVector(random(width),random(height)));
  stars = new ArrayList<Particle>();
  
}
void draw(){
  background(0);
  runStarSystem();
  runAsteroids();
  inputHandler.handle();
  //asteroid.adder();
  //asteroid.handler();
  spaceShip.show();
  spaceShip.setShipBoundaries();
}
