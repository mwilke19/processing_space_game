SpaceShip ship;
Laser laser;
class SpaceShip extends Body {//handles creation,boundaries of the ship
  SpaceShip(int x_, int y_) {
    super(x_, y_, 5);
  }//close SpaceShip constructor
  void show() {//method to draw the ship on the screen
    stroke(5);
    fill(255);
    triangle(this.x-100, this.y+10, this.x, this.y, this.x-100, this.y-10);
    //println("show has executed\n");
  }//close show()
  void setShipBoundaries() {//method to set x and y screen boundaries for the ship
    if (this.x > width || this.x < 100) {//the ship stops on left and right side of screen
      if (this.x < 100) {
        this.x = 100;
      } else {
        this.x = width;
      }
    }
    if (this.y > height +10 || this.y < 0) {//the ship will exit the opposite side from where it entered
      if (this.y < 0) {
        this.y = height;
      } else {
        this.y = 0;
      }
    }
  }//close setShipBoundaries()
}//close SpaceShip()

class Laser extends Body {//extends Body handles laser weapon
  Laser(int x_, int y_) {
    super(x_, y_, 5);
    }//close Laser constructor
  void fire() {//method to fire laser across screen
    float lineLen = 0;
    strokeWeight(3);
    stroke(255, 255, 0);
    line(ship.x, ship.y, width, ship.y);
    lineLen = width - ship.x;
    println("line length = " + lineLen);
  }//close fire
}//close Laser class
