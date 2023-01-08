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
        println("w was pressed\n");
        break;
      case 's'://down
        target.move("down");
        println("s was pressed\n");
        break;
      case 'a'://brake
        target.move("left");
        println("a was pressed\n");
        break;
      case 'd'://boost
        target.move("right");
        println("d was pressed\n");
        break;
      case ' ':
        target.move("fire");
        println("spacebar was pressed\n");
        break;
      }
      //println("handle has executed");
    }
  }//close handle()
}//close Mover class
