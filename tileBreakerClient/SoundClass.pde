// Pravesh Agarwal
// 276 Multimedia and Design
// Project 2
// Submitted to Prof. Stephen P. Carl
// on Dec 6, 2022
// Class that sends osc messages for two numbers: 
// a note and a delay to tilebreaker.pd 
// 

import oscP5.*;
import netP5.*;

class Sound{
  String ipAddress;
  int port;
  OscP5  oscP5;
  NetAddress ip;
  OscMessage omg;
  OscBundle bundle;
  
  Sound(String ipAddress, int port){
    this.ipAddress = ipAddress;
    this.port = port;
    oscP5= new OscP5(this, port);
    ip= new NetAddress(ipAddress, port);
    omg = new OscMessage("/omg");
    bundle=new OscBundle();
  }

  // Method takes a midi note and creates a sound
  void play(int n, int d){
    
    // sending note to play
    OscMessage note =new OscMessage("/note");

    note.add(n);
    bundle.add(note);

    oscP5.send(bundle, ip);
    
    // sending delay
    OscMessage delay =new OscMessage("/delay");

    delay.add(d);
    bundle.add(delay);

    oscP5.send(bundle, ip);
    

  }
  
}
