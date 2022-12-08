class Tile{
  float x, y, w, h, r;
  color c;
  
  Tile(float x, float y, float w, float h, float r, color c){
    this.x =  x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.r = r;
    this.c = c;
  }
  
  void display(){
    fill(c);
    rect(x,y,w,h,r);
  }
  
  // return values
  
  float getX(){
    return x;
  }
  
  float getY(){
    return y;
  }
  
  float getW(){
    return w;
  }
  
  float getH(){
    return h;
  }
  
  
}
