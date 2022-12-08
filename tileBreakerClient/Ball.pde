class Ball {
  // Ball Variables
  float x, y;      // coordinates of ball
  float r;               // radius of the ball
  float xSpeed = 2.8;  // Speed of the shape
  float ySpeed = 2.2;  // Speed of the shape
  //int xDir = 1;  // Left or Right
  //int yDir = 1;  // Top to Bottom
  
  
  Ball(float tempx, float tempy, float tempr){
    x = tempx;
    y = tempy;
    r = tempr;
  }
  
  
  void display(){
    fill(0);
    ellipseMode(RADIUS);
    ellipse(x, y, r, r);
  }
  
  void bounce(){
    // Moving the ball
    x = x + xSpeed;
    y = y + ySpeed;
    
    // Checking wall boundary collision and change direction
    // right wall || left wall
    if (x > width-r || x-r < 0) {
      xSpeed *= -1;
    }
    // bottom wall || top wall
    if ( /*y > height-r ||*/  y-r < 0) {
      ySpeed *= -1;
    }
  }
  
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
