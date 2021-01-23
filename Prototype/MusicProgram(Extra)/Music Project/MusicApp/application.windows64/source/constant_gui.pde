void constant_gui() {
  if (song[currentSong].isPlaying()) {
    fill(black);
    circle(play_but_x, play_but_y, play_but_diameter);
    fill(white);
    rect(pause_x_1, pause_y_1, pause_width, pause_height);
    fill(white);
    rect(pause_x_2, pause_y_2, pause_width, pause_height);
  } else {
    fill(black);
    circle(play_but_x, play_but_y, play_but_diameter);
    fill(white);
    triangle(play_tri_1_x, play_tri_1_y, play_tri_2_x, play_tri_2_y, play_tri_3_x, play_tri_3_y);
  }
}
