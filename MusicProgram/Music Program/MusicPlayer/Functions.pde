void drawFunctions() {
  
  song[currentSong].isPlaying(); //returns true or false, needed in IF Statements or other Boolean applications
  //
  song[currentSong].length(); // returns total length of song in milliseconds
  song[currentSong].position(); // returns current .isPlaying() position of song in milliseconds
  //
  song[currentSong].play(); //Parameter is milli-seconds from start of audio file to start playing
  song[currentSong].pause();
  song[currentSong].rewind();
  //
  //song1.skip(); //Parameter is milli-seconds from start of audio file to start playing
  //
  //Functions recognized by IDE but not in Minim Library
  //song1.stop(); //"Stop" doesn't exist in library, no real documentation or example in minim
} //End drawFunctions
