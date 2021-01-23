void meta_data() {
  println("File Name: ", song_meta_data[currentSong].fileName() );
  println("Length (in milliseconds): ", song_meta_data[currentSong].length() );
  println("Length (in seconds): ", song_meta_data[currentSong].length()/1000 );
  println("Length (in minutes & seconds): ", (song_meta_data[currentSong].length()/1000)/60, " minute", (song_meta_data[currentSong].length()/1000)-((song_meta_data[currentSong].length()/1000)/60 * 60), " seconds" );
  //Sometimes available
  println("Title: ", song_meta_data[currentSong].title());
  println("Author: ", song_meta_data[currentSong].author() ); //Song Writer or Performer
  println("Album: ", song_meta_data[currentSong].album() );
  println("Date Release: ", song_meta_data[currentSong].date() );
  println("Copyright: ", song_meta_data[currentSong].copyright() );
  println("Lyrics: ", song_meta_data[currentSong].lyrics() );
  println("Track: ", song_meta_data[currentSong].track() );
  println("Genre: ", song_meta_data[currentSong].genre() );
  println("Encoded: ", song_meta_data[currentSong].encoded() ); //how a computer reads the file


}
