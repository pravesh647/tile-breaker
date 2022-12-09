// Pravesh Agarwal
// 276 Multimedia and Design
// Project 2
// Submitted to Prof. Stephen P. Carl
// on Dec 6, 2022
// class extends TileClass to add left and right movement 

// 

class PlayTile extends Tile{
  //float x, y, w, h, r;
  float speed = 5.0;
  int left = 0;
  int right = 0;
  
  
  
  PlayTile(float x, float y, float w, float h, float r, color c){
    super(x, y, w, h, r, c);
  }
  
  void display(){
    fill(c);
    if (x < 0){
      x = 0;
    }
    else if (x+w>width){
      x = width-w;
    }
    else{
      x += (right - left) * speed;
    }
   
    rect(x,y,w,h,r);
  }
  
  
  // movement
  void setSpeed(float temp){
    speed = temp;
  };
   
  void moveLeft(int temp){
    left = temp;
  }
  
  void moveRight(int temp){
    right = temp;
  }
  
  boolean wallCollide(){
    if (x < 0 || x+w>width){
      return true;
    }
    return false;
     
  }
  
  
}
