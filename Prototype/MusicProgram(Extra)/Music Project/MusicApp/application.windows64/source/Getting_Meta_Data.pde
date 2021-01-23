void retrieve_meta_data() {
  if (need_meta_data == true) {
    //Description
    noStroke();
    rect(desc_x, desc_y, desc_width, desc_height);
    textFont(font, 25); 
    textAlign(CENTER, CENTER);
    desc_text = song_meta_data[currentSong].fileName();
    fill(black);
    text(desc_text, desc_x, desc_y, desc_width, desc_height);
    //meta_data();
    need_meta_data = false;
  }
}
