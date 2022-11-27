class Body extends PVector{ //Body handles actors drawn to the screen
    int speed;
    Body(int x_, int y_, int speed_) {
      super(x_,y_);
      speed = speed_;
  }// close Body constructor
  void move(String direction) {//method to move the ship based on arguments passed from inputHandler instance of the Mover class
    if (direction == "up")y-=speed;
    if (direction == "down")y+=speed;
    if (direction == "left")x-=speed/2;
    if (direction == "right")x+=speed*1.5;
  }//close move()
}//close Body class
