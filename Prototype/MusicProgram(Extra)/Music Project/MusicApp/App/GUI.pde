void music_player_setup() {

  fill(#F54600);
  circle(play_but_x, play_but_y, play_but_diameter);
  rect(play_rect_x_1, play_rect_y_1, play_rect_width_1, play_rect_height_1);
  fill(white);
  triangle(play_tri_1_x, play_tri_1_y, play_tri_2_x, play_tri_2_y, play_tri_3_x, play_tri_3_y);

  fill(#F54600);
  circle(forward_cir_x, forward_cir_y, forward_cir_diameter);
  fill(white);
  
  triangle(for_tri_1_x, for_tri_1_y, for_tri_2_x, for_tri_2_y, for_tri_3_x, for_tri_3_y);
  triangle(for_tri_4_x, for_tri_4_y, for_tri_5_x, for_tri_5_y, for_tri_6_x, for_tri_6_y);
  rect(for_lin_x_1, for_lin_y_1, for_lin_width, for_lin_height);

  //Rewind button
  
  fill(#F54600);
  circle(rev_cir_x, rev_cir_y, rev_cir_diameter);
  fill(white);
  triangle(rev_tri_1_x, rev_tri_1_y, rev_tri_2_x, rev_tri_2_y, rev_tri_3_x, rev_tri_3_y);
  triangle(rev_tri_4_x, rev_tri_4_y, rev_tri_5_x, rev_tri_5_y, rev_tri_6_x, rev_tri_6_y);
  rect(rev_lin_x_1, rev_lin_y_1, rev_lin_width, rev_lin_height);

  //Next
  fill(#F54600);
  circle(next_but_x, next_but_y, next_but_diameter);
  fill(white);
  rect(next_lin_x_1, next_lin_y_1, next_lin_width, next_lin_height);
  triangle(next_tri_1_x, next_tri_1_y, next_tri_2_x, next_tri_2_y, next_tri_3_x, next_tri_3_y);

  //Previous
  
  fill(#F54600);
  circle(prev_but_x, prev_but_y, prev_but_diameter);
  fill(white);
  triangle(prev_tri_1_x, prev_tri_1_y, prev_tri_2_x, prev_tri_2_y, prev_tri_3_x, prev_tri_3_y);
  rect(prev_lin_x_1, prev_lin_y_1, prev_lin_width_1, prev_lin_height_1);

  //Loop one

  fill(#F54600);
  circle(loop_1_cir_x, loop_1_cir_y, loop_1_cir_diameter);
  //rect(loop_one_rect_x_1, loop_one_rect_y_1, loop_one_rect_width_1, loop_one_rect_height_1);
  fill(white);
  textFont(font, 15); 
  textAlign(CENTER, CENTER);
  text(loop_one_text, loop_1_x, loop_1_y, loop_1_width, loop_1_height);

  //Loop all

  fill(#F54600);
  circle(loop_cir_x, loop_cir_y, loop_cir_diameter);
  textFont(font, 15); 
  textAlign(CENTER, CENTER);
  fill(#F54600);
  text(loop_all_text, loop_rect_x, loop_rect_y, loop_rect_width, loop_rect_height);


  //Quit button
  fill(#F54600);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  fill(white);
  textFont(font, 20); 
  textAlign(CENTER, CENTER);
  text(quit_text, quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);


  //Description
  textFont(font, 25); 
  textAlign(CENTER, CENTER);
  desc_text = song_meta_data[currentSong].fileName();
  fill(#F54600);
  text(desc_text, desc_x, desc_y, desc_width, desc_height);


  //Mute 
 
  fill(#F54600);
  circle(mute_x, mute_y, mute_diameter);
  fill(white);
  textFont(font, 15); 
  textAlign(CENTER, CENTER);
  text(mute_text, mute_rect_1_x, mute_rect_1_y, mute_rect_1_width, mute_rect_1_height);
  rect(mute_rect_1_x, mute_rect_1_y, mute_rect_1_width, mute_rect_1_height);

  //Volume Up
 
  fill(#F54600);
  circle(volume_up_x, volume_up_y, volume_up_diameter);
  fill(white);
 
  textFont(font, 25); 
  textAlign(CENTER, CENTER);
  text(volume_up_text, volume_up_rect_1_x, volume_up_rect_1_y, volume_up_rect_1_width, volume_up_rect_1_height);

  //Volume Down

  fill(#F54600);
  circle(volume_down_x, volume_down_y, volume_down_diameter);
  fill(white);
  textFont(font, 25); 
  textAlign(CENTER, CENTER);
  text(volume_down_text, volume_down_rect_1_x, volume_down_rect_1_y, volume_down_rect_1_width, volume_down_rect_1_height);
}
