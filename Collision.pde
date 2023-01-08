Collision hit;
class Collision {//determines when a collision has occured
  Bullet bullet;
  Asteroid asteroidTarget;
  Collision(Bullet bullet_,Asteroid asteroid_ ) {
    bullet = bullet_;
    asteroid = asteroid_;
  }//close Collision contructor
}
void printLocationData(){
  println("Current bullet coordinates are " + bullet.bulletLocation);
  println("Current asteroid coordinates are " + asteroid.asteroidLocation);
  println(" ");
}
