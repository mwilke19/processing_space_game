class Body extends PVector { //Body handles actors drawn to the screen
  int speed;
  Body(int x_, int y_, int speed_) {
    super();
    x = x_;
    y = y_;
    speed = speed_;
  }// close Body constructor
  void move(String direction) {//method to move the ship based on arguments passed from inputHandler instance of the Mover class
    if (direction == "up") this.add(0, -this.speed);
    if (direction == "down") this.add(0, this.speed);
    if (direction == "left")this.add(-this.speed, 0);
    if (direction == "right")this.add(this.speed, 0);
  }//close move()
}//close Body class
