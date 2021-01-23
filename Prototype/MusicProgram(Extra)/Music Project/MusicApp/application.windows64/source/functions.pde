void drawFunction() {
  song[currentSong].isPlaying(); //Returns true or false
  //
  song[currentSong].length(); // returns total length in milliseconds
  song[currentSong].position(); // returns current .isPlaying() position of song in milliseconds
  //
  song[currentSong].play(); //parameter is milli-seconds from start of audio file to start playing
  song[currentSong].pause();
  song[currentSong].rewind();
}
