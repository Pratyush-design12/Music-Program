void rewind_button() {
  x = mouseX;
  y = mouseY;
  if (mouseX > rev_rect_x && mouseX < rev_rect_x + rev_rect_width && mouseY > rev_rect_y && mouseY < rev_rect_y + rev_rect_height) {
    colour = get(x, y);
    if (colour == black) {
      song[currentSong].skip(-5000);
    }
  }
  if (mouseX > rev_rect_x_1 && mouseX < rev_rect_x_1 + rev_rect_width_1 && mouseY > rev_rect_y_1 && mouseY < rev_rect_y_1 + rev_rect_height_1) {
    colour = get(x, y);
    if (colour == white) {
      song[currentSong].skip(-5000);
    }
  }
}
