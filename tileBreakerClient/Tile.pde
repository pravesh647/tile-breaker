class Tile{
  float x, y, w, h, r;
  color c;
  
  Tile(float tempx, float tempy, float tempw, float temph, float tempr, color tempc){
    x =  tempx;
    y = tempy;
    w = tempw;
    h = temph;
    r = tempr;
    c = tempc;
  }
  
  void display(){
    fill(c);
    rect(x,y,w,h,r);
  }
  
  
  
}
