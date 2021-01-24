void load_songs() {
  minim = new Minim(this); //load from data directory, loadfile should also load from project folder, like loadImage
  song[0] = minim.loadFile("Meditation Music.mp3");
  song[1] = minim.loadFile("Relaxing Anti-Stress Music.mp3");
  song[2] = minim.loadFile("SoftMusic.mp3");
  song[3] = minim.loadFile("Short Relaxing Soft Music.mp3");
  song[4] = minim.loadFile("Sleep Music to Relax.mp3");

  for (int i = currentSong; i<number_of_songs; i++) {
    song_meta_data[i] = song[i].getMetaData();
  }
}
