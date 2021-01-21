
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
  
void selected() {
  
  if (loopall == true) {
    fill(grey);
    circle(loop_cir_x, loop_cir_y, loop_cir_diameter);
    textFont(font, 15); 
    textAlign(CENTER, CENTER);
    fill(white);
    text(loop_all_text, looprectx, looprecty, looprectwidth, looprectheight);
    selected = true;
  }
  if (loop_all == false) {
    fill(black);
    circle(loop_cir_x, loop_cir_y, loop_cir_diameter);
    textFont(font, 15); 
    textAlign(CENTER, CENTER);
    fill(white);
    text(loop_all_text, loop_rect_x, loop_rect_y, loop_rect_width, loop_rect_height);
  } 
  if (loop_one == true) {
    fill(grey);
    circle(loop_1_cir_x, loop_1_cir_y, loop_1_cir_diameter);
    fill(white);
    textFont(font, 15); 
    textAlign(CENTER, CENTER);
    text(loop_one_text, loop1x, loop1y, loop1width, loop1height);
    loop_selected = true;
  }
  if (loop_one == false) {
    fill(black);
    circle(loop1_cir_x, loop1_cir_y, loop1_cir_diameter);
    fill(white);
    textFont(font, 15); 
    textAlign(CENTER, CENTER);
    text(loop_one_text, loop1x, loop1y, loop1width, loop1height);
  }
  if (song[currentSong].isMuted()) {
    fill(grey);
    circle(mute_x, mute_y, mute_diameter);
    fill(white);
    textFont(font, 15); 
    textAlign(CENTER, CENTER);
    text(mutetext, muterect1x, muterect1y, muterect1width, muterect1height);
  } else {
    fill(black);
    circle(mute_x, mute_y, mute_diameter);
    fill(white);
    textFont(font, 15); 
    textAlign(CENTER, CENTER);
    text(mutetext, muterect1x, muterect1y, muterect1width, muterect1height);
  }
}

void timer() {
  
  if (reset_time == true) {
    time = 60;
    reset_time = false;
  }
  if (timer_data_s < 60) {
    timer_data_m = (song[currentSong].position()/1000)/60;
    timer_data_s = (song[currentSong].position()/1000);
    timer_s = timer_data_s;
  } else if (timer_data_s >= (time+60)) {
    timer_data_m = (song[currentSong].position()/1000)/60;
    timer_data_s = (song[currentSong].position()/1000);
    timer_s = timer_data_s - (time);
    if (timer_s > 59) {
      recalculate_time = true;
    }
  } else {
    timer_data_m = (song[currentSong].position()/1000)/60;
    timer_data_s = (song[currentSong].position()/1000);
    timer_s = timer_data_s - (time);
  }
  if (recalculate_time == true) {
    time = time+60;
    recalculate_time = false;
  }
  if (timer_s < 10) {
    song_total_length_m = (song_meta_data[currentSong].length()/1000)/60;
    song_total_length_s = (song_meta_data[currentSong].length()/1000)-((song_meta_data[currentSong].length()/1000)/60 * 60);
    timer_text = timer_data_m + ":0" + timer_s + " / " + song_total_length_m + ":" + song_total_length_s;
    noStroke();
    rect(time_x, time_y, time_width, time_height);
    textFont(font, 25); 
    textAlign(CENTER, CENTER);
    fill(black);
    text(timer_text, time_x, time_y, time_width, time_height);
    fill(white);
  } else {
    song_total_length_m = (song_meta_data[currentSong].length()/1000)/60;
    song_total_length_s = (song_meta_data[currentSong].length()/1000)-((song_meta_data[currentSong].length()/1000)/60 * 60);
    timer_text = timer_data_m + ":" + timer_s + " / " + song_total_length_m + ":" + song_total_length_s;
    noStroke();
    rect(time_x, time_y, time_width, time_height);
    textFont(font, 25); 
    textAlign(CENTER, CENTER);
    fill(black);
    text(timer_text, time_x, time_y, time_width, time_height);
    fill(white);
    
  }
}

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

void volume_up() {
  x = mouseX;
  y = mouseY;
  if (mouseX > volumeuprectx && mouseX < volumeuprectx + volumeuprectwidth && mouseY > volumeuprecty && mouseY < volumeuprecty + volumeuprectheight) {
    colour = get(x, y);
    if (colour == black) {
      if (n < 5 && n >= -25) {
        n = n + 1;
      }
    }
  }
  if (mouseX > volumeuprect1x && mouseX < volumeuprect1x + volumeuprect1width && mouseY > volumeuprect1y && mouseY < volumeuprect1y + volumeuprect1height) {
    if (n < 5 && n >= -25) {
      n = n + 1;
    }
  }
}

void volume_down() {
  x = mouseX;
  y = mouseY;
  if (mouseX > volumedownrectx && mouseX < volumedownrectx + volumedownrectwidth && mouseY > volumedownrecty && mouseY < volumedownrecty + volumedownrectheight) {
    colour = get(x, y);
    if (colour == black) {
      if (n <= 5 && n > -25) {
        n = n - 1;
      }
    }
  }
  if (mouseX > volumedownrect1x && mouseX < volumedownrect1x + volumedownrect1width && mouseY > volumedownrect1y && mouseY < volumedownrect1y + volumedownrect1height) {
    colour = get(x, y);
    if (n <= 5 && n > -25) {
      n = n - 1;
    }
  }
}

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

void mute_button() {
  if (mouseX > muterectx && mouseX < muterectx + muterectwidth && mouseY > muterecty && mouseY < muterecty + muterectheight) {
    x = mouseX;
    y = mouseY;
    colour = get(x, y);
    if (colour == black || colour == grey) {
      if (song[currentSong].isMuted()) {
        song[currentSong].unmute();
      } else {
        song[currentSong].mute();
      }
    }
  }
  if (colour == white) {
    if (mouseX > mute_rect_1_x && mouseX < mute_rect_1_x + mute_rect_1_width && mouseY > mute_rect_1_y && mouseY < mute_rect_1_y + mute_rect_1_height) {
      if (song[currentSong].isMuted()) {
        song[currentSong].unmute();
      } else {
        song[currentSong].mute();
      }
    }
  }
}

void next_button() {
  if (currentSong < 4) {
    if (mouseX > nextrectx1 && mouseX < nextrectx1 + nextrectwidth1 && mouseY > nextrecty1 && mouseY < nextrecty1 + nextrectheight1) {
      x = mouseX;
      y = mouseY;
      colour = get(x, y);
      if (colour == white) {
        if (currentSong == 3) {
          if (mouseX > nextrectx && mouseX < nextrectx + nextrectwidth && mouseY > nextrecty && mouseY < nextrecty + nextrectheight) {
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
            if (mouseX > nextrectx1 && mouseX < nextrectx1 + nextrectwidth1 && mouseY > nextrecty1 && mouseY < nextrecty1 + nextrectheight1) {
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
    if (mouseX > nextrectx && mouseX < nextrectx + nextrectwidth && mouseY > nextrecty && mouseY < nextrecty + nextrectheight) {
      x = mouseX;
      y = mouseY;
      colour = get(x, y);
      if (colour == black) {
        if (currentSong == 3) {
          if (mouseX > nextrectx && mouseX < nextrectx + nextrectwidth && mouseY > nextrecty && mouseY < nextrecty + nextrectheight) {
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
    if (mouseX > nextrectx1 && mouseX < nextrectx1 + nextrectwidth1 && mouseY > nextrecty1 && mouseY < nextrecty1 + nextrectheight1) {
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
    if (mouseX > nextrectx && mouseX < nextrectx + nextrectwidth && mouseY > nextrecty && mouseY < nextrecty + nextrectheight) {
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

void prev_button() {
  
  if (currentSong > 0) {
    if (mouseX > prevrectx && mouseX < prevrectx + prevrectwidth && mouseY > prevrecty && mouseY < prevrecty + prevrectheight) {
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
    if (mouseX > prevrectx1 && mouseX < prevrectx1 + prevrectwidth1 && mouseY > prevrecty1 && mouseY < prevrecty1 + prevrectheight1) {
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
    if (mouseX > prevrectx && mouseX < prevrectx + prevrectwidth && mouseY > prevrecty && mouseY < prevrecty + prevrectheight) {
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
    if (mouseX > prevrectx1 && mouseX < prevrectx1 + prevrectwidth1 && mouseY > prevrecty1 && mouseY < prevrecty1 + prevrectheight1) {
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

void rewind_button() {
  
  x = mouseX;
  y = mouseY;
  if (mouseX > rewrect_x && mouseX < rewrect_x + rewrect_width && mouseY > rewrect_y && mouseY < rewrect_y + rewrect_height) {
    colour = get(x, y);
    if (colour == black) {
      song[currentSong].skip(-5000);
    }
  }
  if (mouseX > rewrectx_1 && mouseX < rewrectx_1 + rewrectwidth_1 && mouseY > rewrecty_1 && mouseY < rewrecty_1 + rewrectheight_1) {
    colour = get(x, y);
    if (colour == white) {
      song[currentSong].skip(-5000);
    }
  }
}

void forward_button() {
  
  x = mouseX;
  y = mouseY;
  if (mouseX > fastrectx && mouseX < fastrectx + fastrectwidth && mouseY > fastrecty && mouseY < forrecty + fastrectheight) {
    colour = get(x, y);
    if (colour == black) {
      song[currentSong].skip(5000);
    }
  }
  if (mouseX > fastrectx1 && mouseX < fastrectx1 + fastrectwidth1 && mouseY > fastrecty1 && mouseY < fastrecty1 + fastrectheight_1) {
    colour = get(x, y);
      song[currentSong].skip(5000);
  }
}
