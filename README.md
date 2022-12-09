# Tile-Breaker

## Client Implementation: 
    -     Client that makes the Tile-breaker game using multiple class objects 

## Classes 
-    TileClass: Creates a Tile object 
-    PlayTileClass: class extends TileClass to add left and right movement 
-    BallClass: Creates a ball object with movement and collision detection 
-    SoundClass: Class that sends osc messages for two numbers: a note and a delay.  
## PD Patch 
-     Gets OSC message (note and delay) from Tile breaker processing game through mrpeach. Plays the note and stop it after delay time in millisecond 

## Libraries used 
-    Default processing 
-    import java.util.Iterator; 
-    import oscP5.*; 
-    import netP5.*; 
-    Pd 
-    mrpeach 

## Features/Concepts: 
-    OOP 
-    Inheritance 
-    Collision Detection 
-    Smooth Ball movement 
-    Smooth Tile movement 
-    Network connection between processing and pd 
-    Pure Data: gameplay sound 

## Future Advanced features  
-    Game played by two players 
-    Sound on-off button
-    Tile with attributes 
o    x2 speed
o    multi-hits
