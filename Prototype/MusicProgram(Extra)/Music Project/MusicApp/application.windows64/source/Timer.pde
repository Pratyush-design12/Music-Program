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
