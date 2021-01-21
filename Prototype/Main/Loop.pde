void loop_one_button() {
  x = mouseX;
  y = mouseY;
  if (mouseX > loop_1_x && mouseX < loop_1_x + loop_1_width && mouseY > loop_1_y && mouseY < loop_1_y + loop_1_height) {
    colour = get(x, y);
    if (colour == black || colour == grey) {
      loop_all = false;
      selected = false;
      if (loop_one == false) {
        loop_one = true;
      }
      if (loop_selected == true) {
        loop_one = false;
        loop_selected = false;
      }
    }
    colour = get(x, y);
    if (colour == white) {
      if (mouseX > loop_one_rect_x_1 && mouseX < loop_one_rect_x_1 + loop_one_rect_width_1 && mouseY > loop_one_rect_y_1 && mouseY < loop_one_rect_y_1 + loop_one_rect_height_1) {
        loop_all = false;
        selected = false;
        if (loop_one == false) {
          loop_one = true;
        }
        if (loop_selected == true) {
          loop_one = true;
          loop_selected = false;
        }
      }
    }
  }
}
void loop_all_button() {
  x = mouseX;
  y = mouseY;
  colour = get(x, y);
  if (mouseX > loop_rect_x && mouseX < loop_rect_x + loop_rect_width && mouseY > loop_rect_y && mouseY < loop_rect_y + loop_rect_height) {
    if (colour == black || colour == grey) {
      loop_one = false;
      loop_selected = false;
      if (loop_all == false) {
        loop_all = true;
      }
      if (selected == true) {
        loop_all = false;
        selected = false;
      }
    }
    if (colour == white) {
      if (mouseX > loop_rect_x_1 && mouseX < loop_rect_x_1 + loop_rect_width_1 && mouseY > loop_rect_y_1 && mouseY < loop_rect_y_1 + loop_rect_height_1) {
        loop_one = false;
        loop_selected = false;
        if (loop_all == false) {
          loop_all = true;
        }
        if (selected == true) {
          loop_all = false;
          selected = false;
        }
      }
    }
  }
}

void  end_of_song() {
  if (loop_one == false) {
    if (song[0].position() >= song[0].length()-800) {
      reset_time = true;
      song[currentSong].pause();
      song[currentSong].rewind();
      currentSong = 1;
      song[currentSong].rewind();
      song[currentSong].play();
      need_meta_data = true;
    }
    if (song[1].position() >= song[1].length()-800) {
      reset_time = true;
      song[currentSong].pause();
      song[currentSong].rewind();
      currentSong = 2;
      song[currentSong].rewind();
      song[currentSong].play();
      need_meta_data = true;
    }
    if (song[2].position() >= song[2].length()-800) {
      reset_time = true;
      song[currentSong].pause();
      song[currentSong].rewind();
      currentSong = 3;
      song[currentSong].rewind();
      song[currentSong].play();
      need_meta_data = true;
    }
    if (song[3].position() >= song[3].length()-800) {
      reset_time = true;
      song[currentSong].pause();
      song[currentSong].rewind();
      currentSong = 4;
      song[currentSong].rewind();
      song[currentSong].play();
      need_meta_data = true;
    }
    if (song[4].position() >= song[4].length()-800) {
      if (loop_all == true) {
        reset_time = true;
        song[currentSong].pause();
        song[currentSong].rewind();
        currentSong = 0;
        song[0].rewind();
        song[0].play();
        need_meta_data = true;
      }
    }
  }
  if (loop_one == true) {
    if (song[currentSong].position() >= song[currentSong].length()-800){
      song[currentSong].rewind();
    }
  }
}
