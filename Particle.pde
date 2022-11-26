Particle star;
class Particle {//handles the location,velocity,lifespan,size,acceleration of a particle
  PVector location;
  PVector velocity;
  PVector acceleration;
  float lifespan;
  float size;
  Particle(PVector star) {//constructor assigns location,acceleration,velocity,lifetime,size values
    location = star.copy();
    acceleration = new PVector(-.003,0);
    velocity = new PVector(-.003,0);
    lifespan = 275 ;
    size = random(1,8);
  }//close Particle constructor
  void run(){//method to run position and display methods
     update();
     display();
     //println(lifespan);
     //println(" ");
  }//close run()
  void update(){//method to update star position
    velocity.add(acceleration);
    location.add(velocity);
    lifespan -= 1.0;
  }//close update()
  void display(){//method to display star on screen
    stroke(0,lifespan);
    fill(255,lifespan);
    ellipse(location.x,location.y,size,size);
  }//close display()
  boolean isDead(){//method to track star lifetime
    if(lifespan<200.0){return true;}
    else{return false;}
   }
  }//close isDead()
}//close Particle class
void runStarSystem() {//method to add stars to the ArrayList, display stars to the screen and remove them when they are dead
    stars.add(new Particle(new PVector(random(width), random(height))));
    Iterator<Particle> it = stars.iterator();
    while (it.hasNext()) {
      Particle star = it.next();
      star.run();
      if (star.isDead()) {
        it.remove();
        println("particle is dead");
      }
}//close runStarSystem
