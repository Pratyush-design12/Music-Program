import controlP5.*;

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
import java.util.*;

//Global Variables

float max_gain = 0;
float volume = 0;
static final int FADE = 2500;
Minim minim;
int numberOfSongs = 10;
AudioPlayer[] song = new AudioPlayer[numberOfSongs];
AudioMetaData[] songMetaData = new AudioMetaData[numberOfSongs];
int currentSong = numberOfSongs - numberOfSongs; //Zero starting index
AudioMetaData songMetaData1; //needs to be an array
int loopNum = 1; //Able to connect this variable to buttons, increasing the loop number
color white=#FFFFFF, red=#FF0000, green=#04C602, black=#1C1C1C, grey=#A7A5A2, buttonC;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
float timeSTX, timeSTY, timeSTW, timeSTH;
float playButtonX, playButtonY, playButtonWidth, playButtonHeight, play1X, play1Y, play2X, play2Y, play3X, play3Y, playCX, playCY, playCD ;
float backrecX, backrecY, backrecW, backrecH, nextrecX, nextrecY, nextrecW, nextrecH, looprecX, looprecY, looprecW, looprecH, loopX, loopY, loopD, fastrecX, fastrecY, fastrecW, fastrecH, rewrecX, rewrecY, rewrecW, rewrecH, playrecX, playrecY, playrecW, playrecH;
float Mute1X, Mute1Y, Mute1W, Mute1H, stopX, stopY, stopW, stopH, ShuffleX, ShuffleY, ShuffleW, ShuffleH, ShuffleCX, ShuffleCY ,ShuffleCD;
float backgroundX, backgroundY, backgroundW, backgroundH;
float fastA1X, fastA1Y, fastA2X, fastA2Y, fastA3X, fastA3Y, fastB1X, fastB1Y, fastB2X, fastB2Y, fastB3X, fastB3Y;
float rewA1X, rewA1Y, rewA2X, rewA2Y, rewA3X, rewA3Y, rewB1X, rewB1Y, rewB2X, rewB2Y, rewB3X, rewB3Y;
float nextA1X, nextA1Y, nextA2X, nextA2Y, nextA3X, nextA3Y, nextBX, nextBY, nextBW, nextBH;
float backA1X, backA1Y, backA2X, backA2Y, backA3X, backA3Y, backBX, backBY, backBW, backBH,timeSX, timeSY, timeSW, timeSH, muteX, muteY, muteW, muteH;
float volumerectX, volumerectY, volumerectW, volumerectH, downvolumerectX, downvolumerectY, downvolumerectW, downvolumerectH;
float song1X, song1Y, song1W, song1H, song2X, song2Y, song2W, song2H, song3X, song3Y, song3W, song3H, song4X, song4Y, song4W, song4H;
float song5X, song5Y, song5W, song5H, song6X, song6Y, song6W, song6H, song7X, song7Y, song7W, song7H, song8X, song8Y, song8W, song8H;
float song9X, song9Y, song9W, song9H, song10X, song10Y, song10W, song10H;
int loopIntNum = 1;
float gain = 15.0;
AudioPlayer snip;
int i;
//LOGO 
float imgX1, imgY1, imgWidth1, imgHeight1, ImageWidthRatio1, ImageHeightRatio1;
PImage img1;
boolean shuffle = true;


int loopBegin;
int loopEnd;

void setup() {
  
  background(#A7A5A2);
  img1 = loadImage("../Logo/download.png");
  fullScreen();
  textSetup();
  population();
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder
  
  song[currentSong] = minim.loadFile("../Music/19th Floor - Bobby Richards.mp3");
  song[currentSong+=1] = minim.loadFile("../Music/Away - Patrick Patrikios.mp3");
  song[currentSong+=1] = minim.loadFile("../Music/Awful - josh pan.mp3");
  song[currentSong+=1] = minim.loadFile("../Music/Breatha - josh pan.mp3");
  song[currentSong+=1] = minim.loadFile("../Music/June - Bobby Richards.mp3");
  song[currentSong+=1] = minim.loadFile("../Music/Phrase Prant - josh pan.mp3");
  song[currentSong+=1] = minim.loadFile("../Music/Piano Trap Beethoven - josh pan.mp3");
  song[currentSong+=1] = minim.loadFile("../Music/Stairway - Patrick Patrikios.mp3");
  song[currentSong+=1] = minim.loadFile("../Music/Tak - Bobby Richards.mp3");
  song[currentSong+=1] = minim.loadFile("../Music/Voices - Patrick Patrikios.mp3");
  
  songMetaData[0] = song[0].getMetaData();
  songMetaData[1] = song[1].getMetaData();
  songMetaData[2] = song[2].getMetaData();
  songMetaData[0] = song[3].getMetaData(); 
  songMetaData[1] = song[4].getMetaData();
  songMetaData[2] = song[5].getMetaData();
  songMetaData[0] = song[6].getMetaData();
  songMetaData[1] = song[7].getMetaData();
  songMetaData[2] = song[8].getMetaData();
  songMetaData[0] = song[9].getMetaData(); 

  //
  currentSong = numberOfSongs - numberOfSongs;
  for (int i=currentSong; i<numberOfSongs; i++) {
    songMetaData[i] = song[i].getMetaData();
  }

    println("Start of Console");
    println("Click the Console to Finish Starting this program");
    println("Press keyboard to test: P, etc.");
  //
  for (int i=currentSong; i<numberOfSongs; i++) {
    
    println("File Name: ", songMetaData[i].fileName());
    println("Song Length (in milliseconds); ", songMetaData[i].length());
    println("Song Length (in seconds): ", songMetaData[i].length()/1000);
    println("Song Length (in minutes and seconds): ", songMetaData[i].length()/1000/60, "minutes", (songMetaData[i].length()/1000)-(songMetaData[i].length()/1000/60*60), "seconds");
    println("Song Title: ", songMetaData[i].title());
    println("Author: ", songMetaData[i].author());
    println("Composer: ", songMetaData[i].composer());
    println("Orchestra: ", songMetaData[i].orchestra());
    println("Album: ", songMetaData[i].album());
    println("Disk: ", songMetaData[i].disc());
    println("Publisher: ", songMetaData[i].publisher());
    println("Date Release: ", songMetaData[i].date());
    println("Copyright: ", songMetaData[i].copyright());
    println("Comments: ", songMetaData[i].comment());
    println("Lyrics: ", songMetaData[i].lyrics());
    println("Track: ", songMetaData[i].track());
    println("Genre: ", songMetaData[i].genre());
    println("Encoded: ", songMetaData[i].encoded());
    
  }
  
    fill(#FC7105);
  rect(backgroundX, backgroundY, backgroundW, backgroundH);
  
  
  fill(white);
  strokeWeight(6);
  rect(imgX1, imgY1, imgWidth1, imgHeight1);
  image(img1, imgX1, imgY1, imgWidth1, imgHeight1);
  strokeWeight(6);
  rect(timeSTX, timeSTY, timeSTW, timeSTH);
  
  strokeWeight(3);
  fill(white);
  rect(looprecX, looprecY, looprecW, looprecH);
  noStroke();
  fill(0);
  ellipse(loopX, loopY, loopD, loopD);
  textDraw2();
  stroke(1);
    
  strokeWeight(3);
  fill(white);
  rect(ShuffleX, ShuffleY,ShuffleW, ShuffleH);
  noStroke();
  fill(black);
  ellipse(ShuffleCX, ShuffleCY ,ShuffleCD, ShuffleCD);
  textDraw3();
  stroke(1);
    
    noStroke();
    fill(white);
    rect(volumerectX, volumerectY, volumerectW, volumerectH);
    textDraw6();
    
  /*  fill(white);
    rect(downvolumerectX, downvolumerectY, downvolumerectW, downvolumerectH);
    textDraw7();
    stroke(1);*/
    
   strokeWeight(2);
    fill(white);
  rect(song1X, song1Y, song1W, song1H);
  textDraw8();
  fill(white);
  rect(song2X, song2Y, song2W, song2H);
  textDraw9();
  fill(white);
  rect(song3X, song3Y, song3W, song3H);
  textDraw10();
  fill(white);
  rect(song4X, song4Y, song4W, song4H);
  textDraw11();
  fill(white);
  rect(song5X, song5Y, song5W, song5H);
  textDraw12();
  fill(white);
  rect(song6X, song6Y, song6W, song6H);
  textDraw13();
  fill(white);
  rect(song7X, song7Y, song7W, song7H);
  textDraw14();
  fill(white);
  rect(song8X, song8Y, song8W, song8H);
  textDraw15();
  fill(white);
  rect(song9X, song9Y, song9W, song9H);
  textDraw16();
  fill(white);
  rect(song10X, song10Y, song10W, song10H);
  textDraw17();
  
  }


void draw() {
  
  Visualizer();
  
  noStroke();
  fill(#FC7105);
  rect(timeSX, timeSY, timeSW, timeSH);
  stroke(1);
  
  strokeWeight(1);
  fill(black);
  rect(width*4.2/15, height*9.12/15, width*2/15, height*0.6/15);
  fill(white); 
  textAlign (CENTER, CENTER); 
  textFont(titlefont, 15); 
  text(songMetaData[currentSong].title(), width*3/15, height*9/15, width*4.7/15, height*1/15);
  fill(255);
  
  fill(white);
  strokeWeight(2);
  rect(timeSTX, timeSTY, timeSTW, timeSTH);
  fill(#FF6F00);
  float posx = map(song[currentSong].position(), 115, song[currentSong].length(), 375, 985);
  strokeWeight(10);
  strokeCap(ROUND);
  line(posx, 712, 985, 712);
  strokeWeight(1);
  ellipse(posx, 712, 10, 10);
  
    if (mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) { 
    buttonC = red;
  } else { 
    buttonC = white;
  } 
  strokeWeight(1);
  fill(buttonC);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  textDraw(); 
  fill(0);
  
   if (mouseX>muteX && mouseX<muteX+muteW && mouseY>muteY && mouseY<muteY+muteH) {
    buttonC = grey;
  } else {
    buttonC = white;
  }
  fill(white);
  noStroke();
  rect(muteX, muteY, muteW, muteH);
  textDraw4();
  stroke(1);
  
  
  if (mouseX>playrecX && mouseX<playrecX+playrecW && mouseY>playrecY && mouseY<playrecY+playrecH) {
    buttonC = grey;
  } else {
    buttonC = white;
  }
  strokeWeight(3);
  fill(white);
  rect(playrecX, playrecY, playrecW, playrecH); 
  strokeWeight(1);
  fill(black);
  noStroke();
  ellipse(playCX, playCY, playCD, playCD);
  fill(buttonC);
  triangle(play1X, play1Y, play2X, play2Y, play3X, play3Y);
  stroke(1);
  
  
   if (mouseX>looprecX && mouseX<looprecX+looprecW && mouseY>looprecY && mouseY<looprecY+looprecH) {
    buttonC = grey;
  } else {
    buttonC = black;
  }
  strokeWeight(3);
  fill(white);
  rect(looprecX, looprecY, looprecW, looprecH);
  fill(black);
  noStroke();
  ellipse(loopX, loopY, loopD, loopD);
  textDraw2();
  stroke(1);


if (mouseX>fastrecX && mouseX<fastrecX+fastrecW && mouseY>fastrecY && mouseY<fastrecY+fastrecH) {
    buttonC = grey;
  } else {
    buttonC = white;
  }
  
  fill(black);
  rect(fastrecX, fastrecY, fastrecW, fastrecH);
  fill(buttonC);
  noStroke();
  triangle(fastA1X, fastA1Y, fastA2X, fastA2Y, fastA3X, fastA3Y);
  fill(buttonC);
  noStroke();
  triangle(fastB1X, fastB1Y, fastB2X, fastB2Y, fastB3X, fastB3Y);
  stroke(1);
  if (mouseX>rewrecX && mouseX<rewrecX+rewrecW && mouseY>rewrecY && mouseY<rewrecY+rewrecH) {
    buttonC = grey;
  } else {
    buttonC = white;
  }
  fill(black);
  rect(rewrecX, rewrecY, rewrecW, rewrecH);
  fill(buttonC);
  noStroke();
  triangle(rewA1X, rewA1Y, rewA2X, rewA2Y, rewA3X, rewA3Y);
  fill(buttonC);
  triangle(rewB1X, rewB1Y, rewB2X, rewB2Y, rewB3X, rewB3Y);
  stroke(1);
  //
  if (mouseX>nextrecX && mouseX<nextrecX+nextrecW && mouseY>nextrecY && mouseY<nextrecY+nextrecH) {
    buttonC = grey;
  } else {
    buttonC = white;
  }
  fill(black);
  rect(nextrecX, nextrecY, nextrecW, nextrecH);
  fill(buttonC); 
  noStroke();
  triangle(nextA1X, nextA1Y, nextA2X, nextA2Y, nextA3X, nextA3Y);
  stroke(1);
  fill(buttonC);
  rect(nextBX, nextBY, nextBW, nextBH);
  
  if (mouseX>backrecX && mouseX<backrecX+backrecW && mouseY>backrecY && mouseY<backrecY+backrecH) {
    buttonC = grey;
  } else {
    buttonC = white;
  }

  fill(black);
  rect(backrecX, backrecY, backrecW, backrecH);
  fill(buttonC);
  noStroke();
  triangle(backA1X, backA1Y, backA2X, backA2Y, backA3X, backA3Y);
  stroke(1);
  fill(buttonC);
  rect(backBX, backBY, backBW, backBH);
  
if (mouseX>stopX && mouseX<stopX+stopW && mouseY>stopY && mouseY<stopY+stopH) {
    buttonC = grey;
  } else {
    buttonC = white;
  }
  fill(buttonC);
  noStroke();
  rect(stopX, stopY, stopW, stopH);
  textDraw5();
 stroke(1);

}
void mousePressed() {
  
  if (mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) exit();

  if (mouseX>ShuffleX && mouseX<ShuffleX+ShuffleW && mouseY>ShuffleY && mouseY<ShuffleY+ShuffleH) {
      if ( song[currentSong].isPlaying() ) {
    if (shuffle) currentSong = int ( random(0, numberOfSongs) );
    } else {
      if (shuffle) currentSong = int ( random(0, numberOfSongs) );
      } 
  }

     if (mouseX>volumerectX && mouseX<volumerectX+volumerectW && mouseY>volumerectY && mouseY<volumerectY+volumerectH) {
       gain = gain+song[currentSong].getGain();   
       song[currentSong].setGain(gain); //Will amply not control
     }
    
    if (mouseX>muteX && mouseX<muteX+muteW && mouseY>muteY && mouseY<muteY+muteH) {
    if ( song[currentSong].isMuted() ) {
      song[currentSong].unmute();
    } else {
      song[currentSong].mute();
    }
  }

if (mouseX>playrecX && mouseX<playrecX+playrecW && mouseY>playrecY && mouseY<playrecY+playrecH) {
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
    } else if ( song[currentSong].position() == song[currentSong].length() ) {
      song[currentSong].rewind();
      song[currentSong].play();
    } else {
      song[currentSong].play();
    }
  }
  //
  if (mouseX>fastrecX && mouseX<fastrecX+fastrecW && mouseY>fastrecY && mouseY<fastrecY+fastrecH) song[currentSong].skip(1000);
  //
  if (mouseX>rewrecX && mouseX<rewrecX+rewrecW && mouseY>rewrecY && mouseY<rewrecY+rewrecH) song[currentSong].skip(-1000); 
  //
  if (mouseX>stopX && mouseX<stopX+stopW && mouseY>stopY && mouseY<stopY+stopH) {
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
    } else { 
      song[currentSong].rewind();
    }
  }
  //
  if (mouseX>looprecX && mouseX<looprecX+looprecW && mouseY>looprecY && mouseY<looprecY+looprecH) song[currentSong].loop(loopIntNum);
  //

if (mouseX>nextrecX && mouseX<nextrecX+nextrecW && mouseY>nextrecY && mouseY<nextrecY+nextrecH) {
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs-1 ) {
        currentSong = numberOfSongs - numberOfSongs;
      } else {
        currentSong++;
      }
      song[currentSong].play();
    } else { 
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs-1 ) {
        currentSong = numberOfSongs - numberOfSongs;
      } else {
        currentSong++;
      }
    }
  }
  //
  if (mouseX>backrecX && mouseX<backrecX+backrecW && mouseY>backrecY && mouseY<backrecY+backrecH) {
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - numberOfSongs ) {
        currentSong = numberOfSongs-1;
      } else {
        currentSong--;
      }
      song[currentSong].play();
    } else { 
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - numberOfSongs ) {
        currentSong = numberOfSongs-1;
      } else {
        currentSong--;
      }
    }
  }
}




void keyPressed()
{
  //snip.loop(2);
}
