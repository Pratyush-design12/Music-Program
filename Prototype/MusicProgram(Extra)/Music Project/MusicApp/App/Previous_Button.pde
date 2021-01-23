void prev_button() {
  if (currentSong > 0) {
    if (mouseX > prev_rect_x && mouseX < prev_rect_x + prev_rect_width && mouseY > prev_rect_y && mouseY < prev_rect_y + prev_rect_height) {
      x = mouseX;
      y = mouseY;
      colour = get(x, y);
      if (colour == black) {
        if (currentSong == 1) {
          reset_time = true;
          song[currentSong].pause();
          currentSong = currentSong - 1;
          song[currentSong].rewind();
          song[currentSong].play();
          need_meta_data = true;
          end_of_list = true;
        } else {
          reset_time = true;
          song[currentSong].pause();
          currentSong = currentSong - 1;
          song[currentSong].rewind();
          song[currentSong].play();
          need_meta_data = true;
        }
      }
    }
    if (mouseX > prev_rect_x_1 && mouseX < prev_rect_x_1 + prev_rect_width_1 && mouseY > prev_rect_y_1 && mouseY < prev_rect_y_1 + prev_rect_height_1) {
      x = mouseX;
      y = mouseY;
      colour = get(x, y);
      if (colour == white) {
        if (currentSong == 1) {
          reset_time = true;
          song[currentSong].pause();
          currentSong = currentSong - 1;
          song[currentSong].rewind();
          song[currentSong].play();
          need_meta_data = true;
          end_of_list = true;
        } else {
          reset_time = true;
          song[currentSong].pause();
          currentSong = currentSong - 1;
          song[currentSong].rewind();
          song[currentSong].play();
          need_meta_data = true;
        }
      }
    }
  } else {
    if (mouseX > prev_rect_x && mouseX < prev_rect_x + prev_rect_width && mouseY > prev_rect_y && mouseY < prev_rect_y + prev_rect_height) {
      x = mouseX;
      y = mouseY;
      colour = get(x, y);
      if (colour == black) {
        reset_time = true;
        song[currentSong].pause();
        song[4].rewind();
        song[4].play();
        currentSong = 4;
        need_meta_data = true;
        end_of_list = false;
      }
    }
    if (mouseX > prev_rect_x_1 && mouseX < prev_rect_x_1 + prev_rect_width_1 && mouseY > prev_rect_y_1 && mouseY < prev_rect_y_1 + prev_rect_height_1) {
      x = mouseX;
      y = mouseY;
      colour = get(x, y);
      if (colour == white) {
        reset_time = true;
        song[currentSong].pause();
        currentSong = 4;
        song[4].rewind();
        song[4].play();
        need_meta_data = true;
        end_of_list = false;
      }
    }
  }
}
