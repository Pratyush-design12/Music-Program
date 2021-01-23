void load_songs() {
  minim = new Minim(this); //load from data directory, loadfile should also load from project folder, like loadImage
  song[0] = minim.loadFile("Aaron Smith - Dancin (KRONO Remix).mp3");
  song[1] = minim.loadFile("Sean Kingston - Beautiful Girls.mp3");
  song[2] = minim.loadFile("Bruno Mars - Marry You.mp3");
  song[3] = minim.loadFile("Lemon Tree - Fools Garden .mp3");
  song[4] = minim.loadFile("ALEXANDRA STAN - Mr. Saxobeat.mp3");

  for (int i = currentSong; i<number_of_songs; i++) {
    song_meta_data[i] = song[i].getMetaData();
  }
}
