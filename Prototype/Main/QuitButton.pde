void quit_button() {
  if (mouseX > quit_rect_x && mouseX < quit_rect_x + quit_rect_width && mouseY > quit_rect_y && mouseY < quit_rect_y + quit_rect_height) {
    exit();
  }
}
