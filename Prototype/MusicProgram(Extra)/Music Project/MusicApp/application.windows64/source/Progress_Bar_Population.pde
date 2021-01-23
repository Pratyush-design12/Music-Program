void progress_bar_population() {
  stroke(0);
  fill(#FFFFFF);
  //rect(progress_bar_x_start, progress_bar_y, progress_bar_width, progress_bar_height);
  //background(#FFFFFF);
  noStroke();
  rect(progress_back_x, progress_back_y, progress_back_width, progress_back_height);
  fill(255); 
  strokeWeight(1);
  fill(0);
  strokeWeight(4);
  stroke(204);
  line(progress_bar_x_start, progress_bar_y, progress_bar_x_end, progress_bar_y ); //where the progress bar should end
  stroke(0);
  TimeStamp = int( map(song[currentSong].position(), 0, song[currentSong].length(), progress_bar_x_start, progress_bar_x_end));
  line(progress_bar_x_start, progress_bar_y, TimeStamp, progress_bar_y );
}
