class Ball {
  // Ball Variables
  float x, y;      // coordinates of ball
  float r;               // radius of the ball
  float xSpeed = 2.8;  // Speed of the shape
  float ySpeed = 2.2;  // Speed of the shape
  int xDir = 1;  // Left or Right
  int yDir = 1;  // Top to Bottom
  
  
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
    x = x + (xSpeed * xDir);
    y = y + (ySpeed * yDir);
    
    // Changing ball direction: if ball exceeds boundary, change direction *1
    // right wall || left wall
    if (x > width-r || x-r < 0) {
      xDir *= -1;
    }
    // bottom wall || top wall
    if ( y > height-r ||  y-r < 0) {
      yDir *= -1;
    }
  }
  


}
