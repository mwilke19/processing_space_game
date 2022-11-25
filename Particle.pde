Particle star;
class Particle {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float lifespan;
  float size;
  Particle(PVector star) {
    location = star.copy();
    acceleration = new PVector(-.003,0);
    velocity = new PVector(-.003,0);
    lifespan = 275 ;
    size = random(1,8);
  }
  void run(){
     update();
     display();
     println(lifespan);
     println(" ");
  }
  void update(){
    velocity.add(acceleration);
    location.add(velocity);
    lifespan -= 1.0;
  }
  void display(){
    stroke(0,lifespan);
    fill(255,lifespan);
    ellipse(location.x,location.y,size,size);
  }
  boolean isDead(){
    if(lifespan<200.0){return true;}
    else{return false;}
  }
  }//close runStarfield
  void runStarSystem() {
    stars.add(new Particle(new PVector(random(width), random(height))));
    Iterator<Particle> it = stars.iterator();
    while (it.hasNext()) {
      Particle star = it.next();
      star.run();
      if (star.isDead()) {
        it.remove();
        println("particle is dead");
      }
  }
}
