import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


//Global Variables
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
float muteX, muteY, muteW, muteH;
float backgroundX, backgroundY, backgroundW, backgroundH;

//LOGO 
float imgX1, imgY1, imgWidth1, imgHeight1, ImageWidthRatio1, ImageHeightRatio1;
PImage img1;

void setup() {
  
  background(#A7A5A2);
  img1 = loadImage("../Logo/download.png");
  fullScreen();
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
  
  fill(white);
  strokeWeight(6);
  rect(imgX1, imgY1, imgWidth1, imgHeight1);
  image(img1, imgX1, imgY1, imgWidth1, imgHeight1);
  rect(timeSTX, timeSTY, timeSTW, timeSTH);
  
  fill(0);
  rect(looprecX, looprecY, looprecW, looprecH);
  fill(white);
  ellipse(loopX, loopY, loopD, loopD);
  //textDraw2();
  
  }


void draw() {
  
  Music_Visualzer();
  
  fill(white);
  strokeWeight(2);
  rect(timeSTX, timeSTY, timeSTW, timeSTH);
  fill(#FF6F00);
  float posx = map(song[currentSong].position(), 115, song[currentSong].length(), 375, 985);
  strokeWeight(10);
  line(posx, 712, 985, 712);
  strokeWeight(5);
  ellipse(posx, 712, 20, 20);
  
    if (mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) { 
    buttonC = red;
  } else { 
    buttonC = white;
  } 
  strokeWeight(1);
  fill(buttonC);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  //textDraw(); 
  
  if (mouseX>playrecX && mouseX<playrecX+playrecW && mouseY>playrecY && mouseY<playrecY+playrecH) {
    buttonC = grey;
  } else {
    buttonC = white;
  }
  fill(white);
  rect(playrecX, playrecY, playrecW, playrecH); 
  fill(black);
  ellipse(playCX, playCY, playCD, playCD);
  fill(buttonC);
  triangle(play1X, play1Y, play2X, play2Y, play3X, play3Y);
  
}

void mousePressed() {
  if (mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) exit();
}

void mouseClicked() {
  
  quitButtonMouseClicked();
  musicPlayerButton();
  
}
