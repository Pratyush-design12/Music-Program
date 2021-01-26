void Music_Visualzer() {
  
  stroke(255);
  for (int i = 0; i < song[currentSong].bufferSize() - 1; i++)
  {

    fill(40);
    float x1 = map( i, 0, song[currentSong].bufferSize(), 0, width );
    float x2 = map( i+1, 0, song[currentSong].bufferSize(), 0, width );
    line( x1, 20 + song[currentSong].left.get(i)*30, x2, 20 + song[currentSong].left.get(i+1)*30 );

    float posx = map(song[currentSong].position(), 0, song[currentSong].length(), 0, width);
    stroke(0, 200, 0);
    line(posx, width*0.9/16, posx, height*0/16);

    stroke(2);
  }
}
