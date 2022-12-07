// Pravesh Agarwal
// 276 Multimedia and Design
// 
// Submitted to Prof. Stephen P. Carl
// on Dec 6, 2022
// 

// References:
//-- Collision
// https://processing.org/examples/bounce.html
//-- OOP
// https://processing.org/tutorials/objects
//-- For smooth movement 
// https://openprocessing.org/sketch/114076/
// 

Ball myBall;
PlayTile myPlayTile;

void setup(){
  size(1000, 700);
  background(255);
  // Specific #frames to be displayed each second. default is 60. more = smooth img
  frameRate(60);
  
  myBall = new Ball(width/2, height/2, 8);
  myPlayTile = new PlayTile(width/2, height-30, 50, 20, 5, color(0,0,255));
}

void draw(){
  background(255);
  myBall.display();
  myBall.bounce();
  
  // Drawing tileMap
  //tile(10,10, color(255,0,0));
  
  // Drawing playTile
  myPlayTile.display();
  
  
}






void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      myPlayTile.moveLeft(1);
    } else if (keyCode == RIGHT) {
      myPlayTile.moveRight(1);
    }
  }
}

void keyReleased() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      myPlayTile.moveLeft(0);
    } else if (keyCode == RIGHT) {
      myPlayTile.moveRight(0);
    }
  }
}

// Collision detection

// - is the ball's coordinates within the coordinates of the rectangle
// - bounce the ball - flip the direction vector of the ball. 
// flip x for horizontal collision
// flip y for vertical collision
