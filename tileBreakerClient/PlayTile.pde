class PlayTile{
  float x, y, w, h, r;
  float speed = 5.0;
  color c;
  int left = 0;
  int right = 0;
  
  
  
  PlayTile(float tempx, float tempy, float tempw, float temph, float tempr, color tempc){
    x =  tempx;
    y = tempy;
    w = tempw;
    h = temph;
    r = tempr;
    c = tempc;
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
