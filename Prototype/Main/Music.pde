 void load_songs() {
   
  minim = new Minim(this); //load from data directory, loadfile should also load from project folder, like loadImage
  song[currentSong] = minim.loadFile("../BackgroundMusic&SoundEffects/song(1).mp3");
  song[currentSong+=1] = minim.loadFile("../BackgroundMusic&SoundEffects/song(2).mp3");
  song[currentSong+=1] = minim.loadFile("../BackgroundMusic&SoundEffects/song(3).mp3");
  song[currentSong+=1] = minim.loadFile("../BackgroundMusic&SoundEffects/song(5).mp3");
 /* song[currentSong+=1] = minim.loadFile("../BackgroundMusic&SoundEffects/song(4).mp3");
  song[currentSong+=1] = minim.loadFile("../BackgroundMusic&SoundEffects/song(6).mp3");
  song[currentSong+=1] = minim.loadFile("../BackgroundMusic&SoundEffects/song(7).mp3");
  song[currentSong+=1] = minim.loadFile("../BackgroundMusic&SoundEffects/song(8).mp3");*/
  
    for (int i = currentSong; i<number_of_songs; i++) {
    song_meta_data[i] = song[i].getMetaData();
  }
}
