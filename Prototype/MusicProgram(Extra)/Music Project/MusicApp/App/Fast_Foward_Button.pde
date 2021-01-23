void forward_button() {
  x = mouseX;
  y = mouseY;
  if (mouseX > for_rect_x && mouseX < for_rect_x + for_rect_width && mouseY > for_rect_y && mouseY < for_rect_y + for_rect_height) {
    colour = get(x, y);
    if (colour == black) {
      song[currentSong].skip(5000);
    }
  }
  if (mouseX > for_rect_x_1 && mouseX < for_rect_x_1 + for_rect_width_1 && mouseY > for_rect_y_1 && mouseY < for_rect_y_1 + for_rect_height_1) {
    colour = get(x, y);
      song[currentSong].skip(5000);
  }
}
