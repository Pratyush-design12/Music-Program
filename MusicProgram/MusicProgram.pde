// MINIM LIBRARY
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables 
Minim minim;
AudioPlayer song1;

void setup() {
  size(400, 700); //fullScreen(), displayWidth & displayHeight, leads to ScreenChecker()
  minim = new Minim(this);
  song1 = minim.loadFile("Sample.mp3");
  song1.play();
}

void draw() {}//End draw()
