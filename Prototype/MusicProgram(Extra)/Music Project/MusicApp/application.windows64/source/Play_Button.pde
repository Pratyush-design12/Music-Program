void play_button() {
  x = mouseX;
  y = mouseY;
  if (mouseX > play_rect_x && mouseX < play_rect_x + play_rect_width && mouseY > play_rect_y && mouseY < play_rect_y + play_rect_height) {
    colour = get(x, y);
    if (song[currentSong].isPlaying()) {
      if (colour == black) {
        song[currentSong].pause();
        need_meta_data = true;
      }
    } else {
      if (colour == black) {
        if (loop_all == false) {
          song[currentSong].play();
          need_meta_data = true;
        } else if (loop_all == true) {
          if (currentSong == 4) {
            reset_time = true;
            currentSong = 0;
            song[0].play();  
            end_of_list = false;
            need_meta_data = true;
          } else {
            song[currentSong].play();
            need_meta_data = true;
          }
        }
      }
    }
  }
  if (mouseX > play_rect_x_1 && mouseX < play_rect_x_1 + play_rect_width_1 && mouseY > play_rect_y_1 && mouseY < play_rect_y_1 + play_rect_height_1) {
    colour = get(x, y);
    if (colour == white) {
      if (song[currentSong].isPlaying()) {
        song[currentSong].pause();
        need_meta_data = true;
      } else {
        if (loop_all == false) {
          song[currentSong].play();
          need_meta_data = true;
        } else if (loop_all == true) {
          if (currentSong == 4) {
            reset_time = true;
            currentSong = 0;
            song[0].play();  
            end_of_list = false;
            need_meta_data = true;
          } else {
            song[currentSong].play();
            need_meta_data = true;
          }
        }
      }
    }
  }
}
