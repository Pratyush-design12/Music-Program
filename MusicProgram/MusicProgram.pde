import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//global variables
//

Boolean nextOn=false, backOn=false, playOn=false, fastOn=false, rewOn=false, stopOn=false, loopOn=false;
float song1X, song1Y, song1W, song1H, song2X, song2Y, song2W, song2H, song3X, song3Y, song3W, song3H, song4X, song4Y, song4W, song4H;
float song5X, song5Y, song5W, song5H, song6X, song6Y, song6W, song6H, song7X, song7Y, song7W, song7H, song8X, song8Y, song8W, song8H;
float song9X, song9Y, song9W, song9H, song10X, song10Y, song10W, song10H, songImgX, songImgY, songImgW, songImgH;
float timeSX, timeSY, timeSW, timeSH, songNX, songNY, songNW, songNH, play1X, play1Y, play2X, play2Y, play3X, play3Y, playCX, playCY, playCD;
float fastPoint1X, fastPoint1Y, fastA2X, fastA2Y, fastA3X, fastA3Y, fastB1X, fastB1Y, fastB2X, fastB2Y, fastB3X, fastB3Y;
float rewPoint1X, rewPoint1Y, rewA2X, rewA2Y, rewA3X, rewA3Y, rewB1X, rewB1Y, rewB2X, rewB2Y, rewB3X, rewB3Y, stopX, stopY, stopW, stopH;
float nextPoint1X, nextPoint1Y, nextA2X, nextA2Y, nextA3X, nextA3Y, nextBX, nextBY, nextBW, nextBH, loopX, loopY, loopD;
float backPoint1X, backPoint1Y, backA2X, backA2Y, backA3X, backA3Y, backBX, backBY, backBW, backBH, muteX, muteY, muteW, muteH;
float backrecX, backrecY, backrecW, backrecH, nextrecX, nextrecY, nextrecW, nextrecH, looprecX, looprecY, looprecW, looprecH, fastrecX, fastrecY, fastrecW, fastrecH, rewrecX, rewrecY, rewrecW, rewrecH, playrecX, playrecY, playrecW, playrecH;
float buttonC;

//Variables
Minim minim;
int numberOfSongs = 8;
AudioPlayer[] song = new AudioPlayer[numberOfSongs];
AudioMetaData[] songMetaData = new AudioMetaData[numberOfSongs];
int loopIntNum = 1;
int currentSong = numberOfSongs - numberOfSongs;

void Setup() {
  
  fullScreen();
  
  //ADD SHAPES
  
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
}
void draw () {
  
fill(#262627);
  rect(timeSX, timeSY, timeSW, timeSH);
  fill(#F06824);
  float posx = map(song[currentSong].position(), 115, song[currentSong].length(), 375, 775);
  strokeWeight(10);
  line(posx, 512, 775, 512);
  strokeWeight(5);
  ellipse(posx, 512, 20, 20);

  strokeWeight(1);
  fill(#122F86);
  rect(width*3/15, height*9/15, width*4.7/15, height*1/15);
  fill(white); 
  textAlign (CENTER, CENTER); 
  text(songMetaData[currentSong].title(), width*3/15, height*9/15, width*4.7/15, height*1/15);
  fill(255);
  
  if (mouseX>playrecX && mouseX<playrecX+playrecW && mouseY>playrecY && mouseY<playrecY+playrecH) {
    buttonC = #E37419;
  } else {
    buttonC = white;
  }
  fill(#122F86);
  rect(playrecX, playrecY, playrecW, playrecH); 
  fill(0);
  ellipse(playCX, playCY, playCD, playCD);
  fill(#EA3273);
  triangle(play1X, play1Y, play2X, play2Y, play3X, play3Y);
  
}

void mousePressed() {
  
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

if (mouseX>fastrecX && mouseX<fastrecX+fastrecW && mouseY>fastrecY && mouseY<fastrecY+fastrecH) song[currentSong].skip(1000); // rewind is -1000

if (mouseX>stopX && mouseX<stopX+stopW && mouseY>stopY && mouseY<stopY+stopH) {
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
    } else { 
      song[currentSong].rewind();
    }
  }
  
 if (mouseX>looprecX && mouseX<looprecX+looprecW && mouseY>looprecY && mouseY<looprecY+looprecH) song[currentSong].loop(loopIntNum);
 
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
  
  if (mouseX>muteX && mouseX<muteX+muteW && mouseY>muteY && mouseY<muteY+muteH) {
    if ( song[currentSong].isMuted() ) {
      song[currentSong].unmute();
    } else {
      song[currentSong].mute();
    }
  }
}
