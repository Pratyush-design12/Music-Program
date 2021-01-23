void next_button() {
  if (currentSong < 4) {
    if (mouseX > next_rect_x_1 && mouseX < next_rect_x_1 + next_rect_width_1 && mouseY > next_rect_y_1 && mouseY < next_rect_y_1 + next_rect_height_1) {
      x = mouseX;
      y = mouseY;
      colour = get(x, y);
      if (colour == white) {
        if (currentSong == 3) {
          if (mouseX > next_rect_x && mouseX < next_rect_x + next_rect_width && mouseY > next_rect_y && mouseY < next_rect_y + next_rect_height) {
            x = mouseX;
            y = mouseY;
            colour = get(x, y);
            if (colour == black) {
              reset_time = true;
              song[currentSong].pause();
              currentSong = currentSong+1;
              song[currentSong].rewind();
              song[currentSong].play();
              need_meta_data = true;
              //end_of_list = true;
            }
            if (mouseX > next_rect_x_1 && mouseX < next_rect_x_1 + next_rect_width_1 && mouseY > next_rect_y_1 && mouseY < next_rect_y_1 + next_rect_height_1) {
              x = mouseX;
              y = mouseY;
              colour = get(x, y);
              if (colour == white) {
                reset_time = true;
                song[currentSong].pause();
                currentSong = currentSong+1;
                song[currentSong].rewind();
                song[currentSong].play();
                need_meta_data = true;
                //end_of_list = true;
              }
            }
          }
        } else {
          reset_time = true;
          song[currentSong].pause();
          currentSong = currentSong+1;
          song[currentSong].rewind();
          song[currentSong].play();
          need_meta_data = true;
        }
      }
    }
    if (mouseX > next_rect_x && mouseX < next_rect_x + next_rect_width && mouseY > next_rect_y && mouseY < next_rect_y + next_rect_height) {
      x = mouseX;
      y = mouseY;
      colour = get(x, y);
      if (colour == black) {
        if (currentSong == 3) {
          if (mouseX > next_rect_x && mouseX < next_rect_x + next_rect_width && mouseY > next_rect_y && mouseY < next_rect_y + next_rect_height) {
            x = mouseX;
            y = mouseY;
            colour = get(x, y);
            if (colour == black) {
              reset_time = true;
              song[currentSong].pause();
              currentSong = currentSong+1;
              song[currentSong].rewind();
              song[currentSong].play();
              need_meta_data = true;
              //end_of_list = true;
            }
          }
        } else {
          reset_time = true;
          song[currentSong].pause();
          currentSong = currentSong+1;
          song[currentSong].rewind();
          song[currentSong].play();
          need_meta_data = true;
        }
      }
    }
  } else {
    if (mouseX > next_rect_x_1 && mouseX < next_rect_x_1 + next_rect_width_1 && mouseY > next_rect_y_1 && mouseY < next_rect_y_1 + next_rect_height_1) {
      x = mouseX;
      y = mouseY;
      colour = get(x, y);
      if (colour == white) {
        reset_time = true;
        song[currentSong].pause();
        currentSong = 0;
        song[0].rewind();
        song[0].play();
        need_meta_data = true;
        end_of_list = false;
      }
    }
    if (mouseX > next_rect_x && mouseX < next_rect_x + next_rect_width && mouseY > next_rect_y && mouseY < next_rect_y + next_rect_height) {
      x = mouseX;
      y = mouseY;
      colour = get(x, y);
      if (colour == black) {
        reset_time = true;
        song[currentSong].pause();
        currentSong = 0;
        song[0].rewind();
        song[0].play();
        need_meta_data = true;
        end_of_list = false;
      }
    }
  }
}
