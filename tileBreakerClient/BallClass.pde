// Pravesh Agarwal
// 276 Multimedia and Design
// Project 2
// Submitted to Prof. Stephen P. Carl
// on Dec 6, 2022
// Creates a ball object with movement and collision detection
// 

class Ball {
  // Ball Variables
  float x, y;      // coordinates of ball
  float r;               // radius of the ball
  float xSpeed = 2.8;  // Speed of the shape
  float ySpeed = 2.2;  // Speed of the shape

  
  
  Ball(float tempx, float tempy, float tempr){
    x = tempx;
    y = tempy;
    r = tempr;
  }
  
  // Display the ball
  void display(){
    fill(0);
    ellipseMode(RADIUS);
    ellipse(x, y, r, r);
  }
  
  // Checking wall boundary collision and change direction
  int beyondwall = 0;
  void bounce(){
    // Moving the ball
    x = x + xSpeed;
    y = y + ySpeed;
    
    
    // right wall || left wall
    if (x > width-r || x-r < 0) {
      xSpeed *= -1;
    }
    // top wall
    if ( y-r < 0) {
      ySpeed *= -1;
    }
    
    // if ball touches bottom wall, play sound.
    // Need beyondwall counter because 
    if(y > height-r && beyondwall < 1){
      mySound.play(250, 350);
      beyondwall += 1;
    }
    // Exits the game after losing.
    if(beyondwall == 1){
      exit();
    }
  }
  
  // Collision detection

  // - is the ball's coordinates within the coordinates of the rectangle
  // - bounce the ball - flip the direction vector of the ball. 
  // flip x for horizontal collision
  // flip y for vertical collision
  
  boolean checkTileCollision(Tile t){
    // checking if ball touches left or right of the tile
    if(x+r+xSpeed > t.getX() && x+r+xSpeed < t.getX()+t.getW()){
      if(y+r > t.getY() && y+r < t.getY()+t.getH()){
        xSpeed *= -1;
        return true;
      }
    }
    // checking if ball touches top or bottom of the tile
    if(x+r > t.getX() && x+r < t.getX()+t.getW()){
      if(y+r+ySpeed > t.getY() && y+r+ySpeed < t.getY()+t.getH()){
        ySpeed *= -1;
        return true;
      }
    }
    return false;
    
  }
  
}
