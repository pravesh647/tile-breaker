// Pravesh Agarwal
// 276 Multimedia and Design
// Project 2
// Submitted to Prof. Stephen P. Carl
// on Dec 6, 2022
// Client that makes the tilebreaker game using multiple class objects
// 

// References:
//-- Collision
// https://processing.org/examples/bounce.html
// https://processing.org/examples/bouncybubbles.html
//-- OOP
// https://processing.org/tutorials/objects
//-- For smooth movement 
// https://openprocessing.org/sketch/114076/
//-- General bugs and exceptions: Stackoverflow
//-- OSC
// https://sojamo.de/libraries/oscp5/
// 

import java.util.Iterator;
import oscP5.*;
import netP5.*;

Ball myBall;
PlayTile myPlayTile;
Sound mySound;
ArrayList<Tile> myTiles = new ArrayList<Tile>();

void setup(){
  noStroke();
  size(1000, 700);
  background(255);
  // Specific #frames to be displayed each second. default is 60. more = smooth img
  frameRate(70);
  
  // Constructing ball
  myBall = new Ball(width/2, height*2/3, 8);
  
  // Constructing Tiles
  int gap = 12;
  float w = 40, h = 15;
  for (float y = 10; y < (height/2-h-10); y += h+gap){
    for (float x = 10; x < (width-w-10); x += w+gap){
      
      myTiles.add( new Tile(x, y, w, h, 2, color(int(random(255)), 0,0)) );
    }
  }
  
  // Constructing playtile
  myPlayTile = new PlayTile(width/2, height-30, 50, 20, 5, color(0,0,255));
  
  // Constructing sound
  mySound  = new Sound("127.0.0.1", 9001);
  
}

void draw(){
  background(255);
  
  // drawing playTile
  myPlayTile.display();
  
  
  // drawing tiles
  for (Iterator<Tile> iter = myTiles.iterator(); iter.hasNext();) {
    Tile temp = iter.next();
    if (!myBall.checkTileCollision(temp)){
      temp.display();
    }
    else{
      iter.remove();
      mySound.play(440, 50);
    }
  }
 
  if(myBall.checkTileCollision(myPlayTile)){
    mySound.play(500, 100);
  }
  // drawing Ball
  
  myBall.display();
  myBall.bounce();
  
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
