void mute_button() {
  if (mouseX > mute_rect_x && mouseX < mute_rect_x + mute_rect_width && mouseY > mute_rect_y && mouseY < mute_rect_y + mute_rect_height) {
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
