//Handles keyboard inputs from user for ship movements
Mover inputHandler;
class Mover {//handles user keyboard inputs and assigns a string value to the button
  Body target;
  Mover(Body target_) {
    target = target_;
  }//close Mover contructor
  void handle() {//method to assign a string name to the key pressed by user
    if (keyPressed) {
      switch(key) {
      case 'w'://up
        target.move("up");
        break;
      case 's'://down
        target.move("down");
        break;
      case 'a'://brake
        target.move("left");
        break;
      case 'd'://boost
        target.move("right");
        break;
      }
      //println("moveShip has executed");
    }
  }//close handle()
}//close Mover class
