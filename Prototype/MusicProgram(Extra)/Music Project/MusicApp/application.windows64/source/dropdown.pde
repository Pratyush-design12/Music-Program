void dropdown(int n) {
  println(n, cp5.get(ScrollableList.class, "dropdown").getItem(n));
  if (n == 0) {
    song[currentSong].pause();
    currentSong = 0;
    need_meta_data = true;
    song[currentSong].rewind();
    song[currentSong].play();
  }
  if (n == 1) {
    song[currentSong].pause();
    currentSong = 1;
    need_meta_data = true;
    song[currentSong].rewind();
    song[currentSong].play();
  }
  if (n == 2) {
    song[currentSong].pause();
    currentSong = 2;
    need_meta_data = true;
    song[currentSong].rewind();
    song[currentSong].play();
  }
  if (n == 3) {
    song[currentSong].pause();
    currentSong = 3;
    need_meta_data = true;
    song[currentSong].rewind();
    song[currentSong].play();
  }
  if (n == 4) {
    song[currentSong].pause();
    currentSong = 4;
    need_meta_data = true;
    song[currentSong].rewind();
    song[currentSong].play();
  }
}
