void loop_all_button() {
  x = mouseX;
  y = mouseY;
  colour = get(x, y);
  if (mouseX > loop_rect_x && mouseX < loop_rect_x + loop_rect_width && mouseY > loop_rect_y && mouseY < loop_rect_y + loop_rect_height) {
    if (colour == black || colour == grey) {
      loop_one = false;
      loop_selected = false;
      if (loop_all == false) {
        loop_all = true;
      }
      if (selected == true) {
        loop_all = false;
        selected = false;
      }
    }
    if (colour == white) {
      if (mouseX > loop_rect_x_1 && mouseX < loop_rect_x_1 + loop_rect_width_1 && mouseY > loop_rect_y_1 && mouseY < loop_rect_y_1 + loop_rect_height_1) {
        loop_one = false;
        loop_selected = false;
        if (loop_all == false) {
          loop_all = true;
        }
        if (selected == true) {
          loop_all = false;
          selected = false;
        }
      }
    }
  }
}
