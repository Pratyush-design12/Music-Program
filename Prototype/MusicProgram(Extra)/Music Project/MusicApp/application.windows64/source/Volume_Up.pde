void volume_up() {
  x = mouseX;
  y = mouseY;
  if (mouseX > volume_up_rect_x && mouseX < volume_up_rect_x + volume_up_rect_width && mouseY > volume_up_rect_y && mouseY < volume_up_rect_y + volume_up_rect_height) {
    colour = get(x, y);
    if (colour == black) {
      if (n < 5 && n >= -25) {
        n = n + 1;
      }
    }
  }
  if (mouseX > volume_up_rect_1_x && mouseX < volume_up_rect_1_x + volume_up_rect_1_width && mouseY > volume_up_rect_1_y && mouseY < volume_up_rect_1_y + volume_up_rect_1_height) {
    if (n < 5 && n >= -25) {
      n = n + 1;
    }
  }
}
