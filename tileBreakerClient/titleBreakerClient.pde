// Pravesh Agarwal
// 276 Multimedia and Design
// 
// Submitted to Prof. Stephen P. Carl
// on Dec 6, 2022
// 

// References:
// https://processing.org/examples/bounce.html
// https://processing.org/tutorials/objects
// 


// Ball Variables

float ballX, ballY;  // coordinates of ball
float ballSpeedX = 2.8;  // Speed of the shape
float ballSpeedY = 2.2;  // Speed of the shape
int ballDirectionX = 1;  // Left or Right
int ballDirectionY = 1;  // Top to Bottom




void setup(){
  size(1000, 700);
  background(255);
  // Specific #frames to be displayed each second. default is 60. more = smooth img
  frameRate(60);
  
  // Ball
  ellipseMode(RADIUS);
  ballX = width/2;
  ballY = height/2;
}


void draw(){
  background(255);
  
  // Drawing tileMap
  tile(10,10, color(255,0,0));
  
  // Drawing playTile
  playTile(10, 500, color(0,0, 255)); 
  
  
  // Moving the ball
  ballX += (ballSpeedX * ballDirectionX);
  ballY += (ballSpeedY * ballDirectionY);
  
  // Changing ball direction
  if (){
  
  }
  
  
  
}

void ball(float x, float y){
  fill(0);
  int radius = 10;
  ellipse(x,y,radius, radius);
}

void tile(float x, float y, color c){
  int w = 30;
  int h = 10;
  fill(c);
  rect(x,y,w,h);
  
}

void tileMap(){
  
}

void playTile(float x, float y, color c){
  int w = 50;
  int h = 15;
  int r = 2;
  fill(c);
  rect(x,y,w,h,r);
  
}


void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      //fillVal = 255;
    } else if (keyCode == RIGHT) {
      //fillVal = 0;
    } 
  }
}




// Collision detection

// - is the ball's coordinates within the coordinates of the rectangle
// - bounce the ball - flip the direction vector of the ball. 
// flip x for horizontal collision
// flip y for vertical collision
