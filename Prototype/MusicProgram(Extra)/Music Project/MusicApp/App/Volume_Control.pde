void volume() {
  song[currentSong].setGain(n);
  strokeWeight(1);
  rect(volume_x, volume_y, volume_width, volume_height);
  fill(black);
  volume = n+26+"";
  volume_text = volume;
  textFont(font, 15); 
  textAlign(CENTER, CENTER);
  text(volume_text, volume_x, volume_y, volume_width, volume_height);
}
