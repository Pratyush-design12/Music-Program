//Minim Library: use Sketch / Import Library / Add Library
//Minim Library: use Sketch / Import Library / Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

// Global Variables
Minim minim; //creates object to access all functions
AudioPlayer song1; //creates "Play List" variable holding extensions WAV, AIFF, AU, SND, and MP3
int numberOfSongs = 3;
AudioPlayer[] song = new AudioPlayer[numberOfSongs];
AudioMetaData[] songMetaData = new AudioMetaData[numberOfSongs]; 
int loopIntNum = 1; //Able to connect this variable to buttons, increasing the loop number //loopIntNum+1 //loopIntNum+=
int currentSong = numberOfSongs - numberOfSongs;
float getVolume()
int i;
void setup() {
  background(#090d16);
  size(400, 650, P3D); //fullScreen(), displayWidth & displayHeight, leads to ScreenChecker()
  minim = new Minim(this);
  song[currentSong] = minim.loadFile("../Music/song(1).mp3");
  song[currentSong+=1] = minim.loadFile("../Music/song(2).mp3");
  song[currentSong+=1] = minim.loadFile("../Music/song(3).mp3");
  //
  songMetaData[0] = song[0].getMetaData(); //reads song meta 1, like song 1, mimicing array notation
  songMetaData[1] = song[1].getMetaData();
  songMetaData[2] = song[2].getMetaData();
  //
  currentSong = numberOfSongs - numberOfSongs; 
  for (int i=currentSong; i<numberOfSongs; i++) {
  songMetaData[i] = song[i].getMetaData();
  }//End FOR LOOP, loading Meta Data
  textFont(createFont("Arial", 12));
  
  quitButtonSetup();
  musicPlayerGUI_Setup();
  
  println("Start of Console"); //Not seen, means output to console too long //Decrease println's or increase memory
  println("Click the Console to Finish Starting this program"); //"Windows expects you to 'click into the window'
  println("Press keyboard to test: P, etc.");
  //
  for ( int i=currentSong; i<numberOfSongs; i++) {
    println("File Name: ", songMetaData[i].fileName() );
    println("Song Length (in milliseconds); ", songMetaData[i].length() );
    println("Song Length (in seconds): ", songMetaData[i].length()/1000 );
    println("Song Length (in mintues and seconds): ", songMetaData[i].length()/1000/60, "minutes", (songMetaData[i].length()/1000)-(songMetaData[i].length()/1000/60 *60), "seconds" );
    println("Song Title: ", songMetaData[i].title() );
    println("Author: ", songMetaData[i].author() );
    println("Composer: ", songMetaData[i].composer() );
    println("Orchestra: ", songMetaData[i].orchestra() );
    println("Albums: ", songMetaData[i].album() );
    println("Disk: ", songMetaData[i].disc() );
    println("Publisher: ", songMetaData[i].publisher() );
    println("Date Release: ", songMetaData[i].date() );
    println("Copyright: ", songMetaData[i].copyright() );
    println("Comments: ", songMetaData[i].comment() );
    println("Lyrics: ", songMetaData[i].lyrics() );
    println("Track: ", songMetaData[i].track() );
    println("Genre: ", songMetaData[i].genre() );
    println("Encoded: ", songMetaData[i].encoded() );
  }//End Console Output
  
}

void draw() {
  
  rect(width*1/4, height*0, width*1/2, height*1/10);
  fill(purple); //Ink, hexidecimal copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(titleFont, 25); //Change the number until it fits, largest font size
  text(songMetaData[currentSong].title(), width*1/4, height*0, width*1/2, height*1/10);
  fill(255); //Reset to white for rest of the program
}//End draw()
  
/*  
 stroke(255);
  

  {
    line(i, 50  + song1.left.get(i)*50,  i+1, 50  + song1.left.get(i+1)*50);
    line(i, 150 + song1.right.get(i)*50, i+1, 150 + song1.right.get(i+1)*50);
  }

  text("The player has " + song1.loopCount() + " loops left. "
    + " Is playing: " + song1.isPlaying()
    + ", Is looping: " + song1.isLooping(),5,15);
  
  */
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
 if ( key == 'l' || key =='L' ) song1.loop(loopIntNum); //Loop Button
  //
  //Next Button
  
 if ( key == 'n' || key == 'N' ) {
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
  }// End of Next Button
  
  //Previous Button
  
   if (key == 'b' || key == 'B') {
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
   }// End of previous button
}
  
void mouseClicked() { 
  
  quitButtonMouseClicked();
  musicPlayerButtons();
  
}
