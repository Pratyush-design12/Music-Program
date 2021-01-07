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
  background(#090d16);
  size(400, 650); //fullScreen(), displayWidth & displayHeight, leads to ScreenChecker()
  minim = new Minim(this);
  song1 = minim.loadFile("Sample.mp3");
  song1.play();
  
  quitButtonSetup();
  musicPlayerGUI_Setup();
  
}

 

void draw() {
  
 quitButtonDraw();
 
}//End draw()
void keyPressed() {

if ( key == 'p' || key == 'P' ) {
   if ( song1.isPlaying() ) {
     song1.pause();
    } else if ( song1.position() == song1.length() ) {
    song1.rewind();   
    song1.play();
    } else {
      song1.play();
  //Play
    }
  }
  //
  if ( key == 's' || key == 'S' ) {
    if ( song1.isPlaying() ) {
    song1.pause();
    song1.rewind();
  } else if ( song1.position() == song1.length() ) {
    song1.rewind();
  } else {
    song1.rewind();
  }
 }
 
 if ( key == 'f' || key == 'f' ) song1.skip(1000);
 if ( key == 'r' || key == 'R' ) song1.skip(-1000);
}

void mouseClicked() { 
  
  quitButtonMouseClicked();
  musicPlayerButtons();
  
}
