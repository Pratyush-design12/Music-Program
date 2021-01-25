import controlP5.*;

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


//global variables
//

Boolean nextOn=false, backOn=false, playOn=false, FastForwardOn=false, rewOn=false, stopOn=false, loopOn=false;
float CanvasX, CanvasY, CanvasW, CanvasH, listX, listY, listW, listH, picX1, picY1, picWidth1, picHeight1, picImageWidthRatio1, picImageHeightRatio1;
float song1X, song1Y, song1W, song1H, song2X, song2Y, song2W, song2H, song3X, song3Y, song3W, song3H, song4X, song4Y, song4W, song4H;
float song5X, song5Y, song5W, song5H, song6X, song6Y, song6W, song6H, song7X, song7Y, song7W, song7H, song8X, song8Y, song8W, song8H;
float song9X, song9Y, song9W, song9H, song10X, song10Y, song10W, song10H, songImgX, songImgY, songImgW, songImgH;
float timeSX, timeSY, timeSW, timeSH, songNX, songNY, songNW, songNH, play1X, play1Y, play2X, play2Y, play3X, play3Y, playCX, playCY, playCD;
float FastForwardPoint1X, FastForwardPoint1Y, FastForwardPoint2X, FastForwardPoint2Y, FastForwardPoint3X, FastForwardPoint3Y, FastForwardB1X, FastForwardB1Y, FastForwardB2X, FastForwardB2Y, FastForwardB3X, FastForwardB3Y;
float rewPoint1X, rewPoint1Y, rewPoint2X, rewPoint2Y, rewPoint3X, rewPoint3Y, rewB1X, rewB1Y, rewB2X, rewB2Y, rewB3X, rewB3Y, stopX, stopY, stopW, stopH;
float nextPoint1X, nextPoint1Y, nextPoint2X, nextPoint2Y, nextPoint3X, nextPoint3Y, nextBX, nextBY, nextBW, nextBH, loopX, loopY, loopD;
float backPoint1X, backPoint1Y, backPoint2X, backPoint2Y, backPoint3X, backPoint3Y, backBX, backBY, backBW, backBH, muteX, muteY, muteW, muteH;
float backrecX, backrecY, backrecW, backrecH, nextrecX, nextrecY, nextrecW, nextrecH, looprecX, looprecY, looprecW, looprecH, FastForwardrecX, FastForwardrecY, FastForwardrecW, FastForwardrecH, rewrecX, rewrecY, rewrecW, rewrecH, playrecX, playrecY, playrecW, playrecH;
float buttonC;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;


//Variables
ControlP5 cp5;
Minim minim;
int numberOfSongs = 8;
AudioPlayer[] song = new AudioPlayer[numberOfSongs];
AudioMetaData[] songMetaData = new AudioMetaData[numberOfSongs];
int loopIntNum = 1;
PImage pic1;
int currentSong = numberOfSongs - numberOfSongs;
int i, n, x, y;
int songLength;
int TimeStamp = 0;
int timer_s = 0;
int timer_data_m;
int timer_data_s;
int time;

boolean playing;
boolean paused;
boolean end_of_list;
boolean next;
boolean need_meta_data;
boolean loop_all;
boolean selected;
boolean loop_one;
boolean loop_selected;
boolean reset_time;
boolean recalculate_time;

void Setup() {
  
  size(600,700);
  pic1 = loadImage("../BackgroundMusic&SoundEffects/download.png");
  population();
  //quitButtonSetup();
  GUI_Setup();
  

  
  song[currentSong] = minim.loadFile("../BackgroundMusic&SoundEffects/song(1).mp3");
  song[currentSong+=1] = minim.loadFile("../BackgroundMusic&SoundEffects/song(2).mp3");
  song[currentSong+=1] = minim.loadFile("../BackgroundMusic&SoundEffects/song(3).mp3");
  song[currentSong+=1] = minim.loadFile("../BackgroundMusic&SoundEffects/song(5).mp3");
  song[currentSong+=1] = minim.loadFile("../BackgroundMusic&SoundEffects/song(4).mp3");
  song[currentSong+=1] = minim.loadFile("../BackgroundMusic&SoundEffects/song(6).mp3");
  song[currentSong+=1] = minim.loadFile("../BackgroundMusic&SoundEffects/song(7).mp3");
  song[currentSong+=1] = minim.loadFile("../BackgroundMusic&SoundEffects/song(8).mp3");
  //
  currentSong = numberOfSongs - numberOfSongs;
  for (int i=currentSong; i<numberOfSongs; i++) {
    songMetaData[i] = song[i].getMetaData();
  }
  //
  println("Start of Console");
  println("Click the Console to Finish Starting this program");
  println("Press keyboard to test: P, etc.");
  
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
    
  fill(#050505);
  rect(CanvasX, CanvasY, CanvasW, CanvasH);

    
  }
}
void draw () {
  


}

void mousePressed() {
   if (mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) exit();
  //
  

}
