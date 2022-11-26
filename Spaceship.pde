SpaceShip spaceShip;

class SpaceShip extends Body {//handles creation,boundaries of the ship
  SpaceShip(int x_, int y_, int speed_) {
    super(x_, y_, speed_);
  }//close SpaceShip constructor
  void show() {//method to draw the ship on the screen
    stroke(5);
    fill(255);
    triangle(x-100, y+10, x, y, x-100, y-10);
    //println("spaceShip has executed");
  }//close show()
  void setShipBoundaries() {//method to set x and y screen boundaries for the ship
    if (x > width || x < 100) {//the ship stops on left and right side of screen
      if (x < 100) {
        x = 100;
      } else {
        x = width;
      }
    }
    if (y > height +10 || y < 0) {//the ship will exit the opposite side from where it entered
      if (y < 0) {
        y = height;
      } else {
        y = 0;
      }
    }
  }//close setShipBoundaries()
}//close SpaceShip()
