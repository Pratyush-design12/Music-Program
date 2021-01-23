void wave_form() {
  fill(white);
  noStroke();
  rect(sound_back_x, sound_back_y, sound_back_width, sound_back_height);
  stroke(0);
  strokeWeight(1);
  for (int i = 0; i < song[currentSong].bufferSize() - 1; i++)
  {
    float x1 = map( i, 0, song[currentSong].bufferSize(), displayWidth*1/4, displayWidth*3/4);
    float x2 = map( i+1, 0, song[currentSong].bufferSize(), displayWidth*1/4, displayWidth*3/4);
    line( x1, displayHeight*15/25 + song[currentSong].left.get(i)*50, x2, displayHeight*15/25 + song[currentSong].left.get(i+1)*50 );
  }
}
