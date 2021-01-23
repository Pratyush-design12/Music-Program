import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import ddf.minim.*; 
import ddf.minim.analysis.*; 
import ddf.minim.effects.*; 
import ddf.minim.signals.*; 
import ddf.minim.spi.*; 
import ddf.minim.ugens.*; 
import controlP5.*; 
import java.util.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class App extends PApplet {











//Global Variables

float mini_back_x, mini_back_y, mini_back_width, mini_back_height;
//
float play_but_x, play_but_y, play_but_diameter;
float play_tri_1_x, play_tri_1_y, play_tri_2_x, play_tri_2_y, play_tri_3_x, play_tri_3_y;
float play_rect_x, play_rect_y, play_rect_width, play_rect_height;
float play_rect_x_1, play_rect_y_1, play_rect_width_1, play_rect_height_1;
//
float pause_x_1, pause_y_1, pause_width, pause_height;
float pause_x_2, pause_y_2;
//
float next_but_x, next_but_y, next_but_diameter;
float next_tri_1_x, next_tri_1_y, next_tri_2_x, next_tri_2_y, next_tri_3_x, next_tri_3_y;
float next_lin_x_1, next_lin_y_1, next_lin_width, next_lin_height;
float next_rect_x, next_rect_y, next_rect_width, next_rect_height;
float next_rect_x_1, next_rect_y_1, next_rect_width_1, next_rect_height_1;
//
float prev_but_x, prev_but_y, prev_but_diameter;
float prev_tri_1_x, prev_tri_1_y, prev_tri_2_x, prev_tri_2_y, prev_tri_3_x, prev_tri_3_y;
float prev_lin_x_1, prev_lin_y_1, prev_lin_width_1, prev_lin_height_1;
float prev_rect_x, prev_rect_y, prev_rect_width, prev_rect_height;
float prev_rect_x_1, prev_rect_y_1, prev_rect_width_1, prev_rect_height_1;
//
float loop_cir_x, loop_cir_y, loop_cir_diameter;
float loop_rect_x, loop_rect_y, loop_rect_width, loop_rect_height;
float loop_rect_x_1, loop_rect_y_1, loop_rect_width_1, loop_rect_height_1;
String loop_all_text;
//
float desc_x, desc_y, desc_width, desc_height;
float time_x, time_y, time_width, time_height;
String desc_text;
String timer_text;
String song_total_length_text;
//
float forward_cir_x, forward_cir_y, forward_cir_diameter;
float forward_x, forward_y, forward_width, forward_height;
float for_tri_1_x, for_tri_1_y, for_tri_2_x, for_tri_2_y, for_tri_3_x, for_tri_3_y;
float for_tri_4_x, for_tri_4_y, for_tri_5_x, for_tri_5_y, for_tri_6_x, for_tri_6_y;
float for_lin_x_1, for_lin_y_1, for_lin_width, for_lin_height;
float for_rect_x, for_rect_y, for_rect_width, for_rect_height;
float for_rect_x_1, for_rect_y_1, for_rect_width_1, for_rect_height_1;
//
float rev_cir_x, rev_cir_y, rev_cir_diameter;
float rev_x, rev_y, rev_width, rev_height;
float rev_tri_1_x, rev_tri_1_y, rev_tri_2_x, rev_tri_2_y, rev_tri_3_x, rev_tri_3_y;
float rev_tri_4_x, rev_tri_4_y, rev_tri_5_x, rev_tri_5_y, rev_tri_6_x, rev_tri_6_y;
float rev_lin_x_1, rev_lin_y_1, rev_lin_width, rev_lin_height;
float rev_rect_x, rev_rect_y, rev_rect_width, rev_rect_height;
float rev_rect_x_1, rev_rect_y_1, rev_rect_width_1, rev_rect_height_1;
//
float loop_1_x, loop_1_y, loop_1_width, loop_1_height;
float loop_1_cir_x, loop_1_cir_y, loop_1_cir_diameter;
float loop_one_rect_x_1, loop_one_rect_y_1, loop_one_rect_width_1, loop_one_rect_height_1;
String loop_one_text;
//
float mute_x, mute_y, mute_diameter;
float mute_rect_x, mute_rect_y, mute_rect_width, mute_rect_height;
float mute_rect_1_x, mute_rect_1_y, mute_rect_1_width, mute_rect_1_height;
String mute_text;
//
float volume_up_x, volume_up_y, volume_up_diameter;
float volume_up_rect_x, volume_up_rect_y, volume_up_rect_width, volume_up_rect_height;
float volume_up_rect_1_x, volume_up_rect_1_y, volume_up_rect_1_width, volume_up_rect_1_height;
String volume_up_text;
//
float volume_down_x, volume_down_y, volume_down_diameter;
float volume_down_rect_x, volume_down_rect_y, volume_down_rect_width, volume_down_rect_height;
float volume_down_rect_1_x, volume_down_rect_1_y, volume_down_rect_1_width, volume_down_rect_1_height;
String volume_down_text;
//
float volume_x, volume_y, volume_width, volume_height;
String volume_text;
//
float quit_rect_x, quit_rect_y, quit_rect_width, quit_rect_height;
String quit_text;
//
String list_1;
String list_2;
String list_3;
String list_4;
String list_5;
//
float colour;
//
int white, black, grey;
//
boolean playing;
boolean paused;
boolean end_of_list;
boolean next;
boolean need_meta_data;
boolean reset_time;
boolean recalculate_time;
boolean loop_all;
boolean selected;
boolean loop_one;
boolean loop_selected;
//
int number_of_songs = 5;
int number_of_acc_songs;
int currentSong = 0;
int song_playing = 0;
int i;
int x, y;
int loop_int_num = 1; 
int timer_s = 0;
int timer_data_m;
int timer_data_s;
int time;
int song_total_length_m;
int song_total_length_s;
//
int songLength;
int TimeStamp = 0;
int position;
float progress_bar_x_start, progress_bar_x_end, progress_bar_y, progress_bar_width, progress_bar_height;
float progress_back_x, progress_back_y, progress_back_width, progress_back_height;
int n;
String volume;
//
float sound_back_x, sound_back_y, sound_back_width, sound_back_height;
//
PFont font;
//
String absolute;
//
//float dB;

ControlP5 cp5;
ControlFont cf1;

Minim  minim; //creates object to access all functions
AudioPlayer[] song = new AudioPlayer[number_of_songs]; 
AudioMetaData[] song_meta_data = new AudioMetaData[number_of_songs];
//Gain  gain;
//AudioOutput out;

public void setup() {
  
  populating_variables();
  frameRate(120);
  background(white);
  load_songs();
  instructions();
  music_player_setup();
  scrollable_list();
}

public void draw() {
  //
  progress_bar_population();
  //
  noStroke();
  fill(white);
  rect(mini_back_x, mini_back_y, mini_back_width, mini_back_height);
  end_of_song();
  constant_gui();
  timer();
  retrieve_meta_data();
  selected();
  wave_form();
  volume();
}

public void mousePressed() {
  play_button();
  next_button();
  prev_button();
  loop_all_button();
  forward_button();
  rewind_button();
  loop_one_button();
  quit_button();
  mute_button();
  volume_up();
  volume_down();
}

public void mouseReleased() {
  if (mouseX >= progress_bar_x_start && mouseX <= progress_bar_x_end && mouseY >= progress_bar_y && mouseY <= progress_bar_y+5) {
    position = PApplet.parseInt( map(mouseX, progress_bar_x_start, progress_bar_x_end, 0, song[currentSong].length() ) );
    song[currentSong].cue(position);
  }
}
public void  end_of_song() {
  if (loop_one == false) {
    if (song[0].position() >= song[0].length()-800) {
      reset_time = true;
      song[currentSong].pause();
      song[currentSong].rewind();
      currentSong = 1;
      song[currentSong].rewind();
      song[currentSong].play();
      need_meta_data = true;
    }
    if (song[1].position() >= song[1].length()-800) {
      reset_time = true;
      song[currentSong].pause();
      song[currentSong].rewind();
      currentSong = 2;
      song[currentSong].rewind();
      song[currentSong].play();
      need_meta_data = true;
    }
    if (song[2].position() >= song[2].length()-800) {
      reset_time = true;
      song[currentSong].pause();
      song[currentSong].rewind();
      currentSong = 3;
      song[currentSong].rewind();
      song[currentSong].play();
      need_meta_data = true;
    }
    if (song[3].position() >= song[3].length()-800) {
      reset_time = true;
      song[currentSong].pause();
      song[currentSong].rewind();
      currentSong = 4;
      song[currentSong].rewind();
      song[currentSong].play();
      need_meta_data = true;
    }
    if (song[4].position() >= song[4].length()-800) {
      if (loop_all == true) {
        reset_time = true;
        song[currentSong].pause();
        song[currentSong].rewind();
        currentSong = 0;
        song[0].rewind();
        song[0].play();
        need_meta_data = true;
      }
    }
  }
  if (loop_one == true) {
    if (song[currentSong].position() >= song[currentSong].length()-800){
      song[currentSong].rewind();
    }
  }
}
public void forward_button() {
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
public void music_player_setup() {
  //play button
  //fill(white);
  //rect(play_rect_x, play_rect_y, play_rect_width, play_rect_height);
  fill(black);
  circle(play_but_x, play_but_y, play_but_diameter);
  rect(play_rect_x_1, play_rect_y_1, play_rect_width_1, play_rect_height_1);
  fill(white);
  triangle(play_tri_1_x, play_tri_1_y, play_tri_2_x, play_tri_2_y, play_tri_3_x, play_tri_3_y);

  //fast forward button
  //rect(for_rect_x, for_rect_y, for_rect_width, for_rect_height);
  fill(black);
  circle(forward_cir_x, forward_cir_y, forward_cir_diameter);
  fill(white);
  //rect(for_rect_x_1, for_rect_y_1, for_rect_width_1, for_rect_height_1);
  triangle(for_tri_1_x, for_tri_1_y, for_tri_2_x, for_tri_2_y, for_tri_3_x, for_tri_3_y);
  triangle(for_tri_4_x, for_tri_4_y, for_tri_5_x, for_tri_5_y, for_tri_6_x, for_tri_6_y);
  rect(for_lin_x_1, for_lin_y_1, for_lin_width, for_lin_height);

  //Rewind button
  //rect(rev_rect_x, rev_rect_y, rev_rect_width, rev_rect_height);
  fill(black);
  circle(rev_cir_x, rev_cir_y, rev_cir_diameter);
  //rect(rev_rect_x_1, rev_rect_y_1, rev_rect_width_1, rev_rect_height_1);
  fill(white);
  triangle(rev_tri_1_x, rev_tri_1_y, rev_tri_2_x, rev_tri_2_y, rev_tri_3_x, rev_tri_3_y);
  triangle(rev_tri_4_x, rev_tri_4_y, rev_tri_5_x, rev_tri_5_y, rev_tri_6_x, rev_tri_6_y);
  rect(rev_lin_x_1, rev_lin_y_1, rev_lin_width, rev_lin_height);

  //Next
  fill(black);
  circle(next_but_x, next_but_y, next_but_diameter);
  fill(white);
  rect(next_lin_x_1, next_lin_y_1, next_lin_width, next_lin_height);
  triangle(next_tri_1_x, next_tri_1_y, next_tri_2_x, next_tri_2_y, next_tri_3_x, next_tri_3_y);

  //Previous
  //rect(prev_rect_x, prev_rect_y, prev_rect_width, prev_rect_height);
  fill(black);
  circle(prev_but_x, prev_but_y, prev_but_diameter);
  //rect(prev_rect_x_1, prev_rect_y_1, prev_rect_width_1, prev_rect_height_1);
  fill(white);
  triangle(prev_tri_1_x, prev_tri_1_y, prev_tri_2_x, prev_tri_2_y, prev_tri_3_x, prev_tri_3_y);
  rect(prev_lin_x_1, prev_lin_y_1, prev_lin_width_1, prev_lin_height_1);

  //Loop one
  //fill(white);
  //rect(loop_1_x, loop_1_y, loop_1_width, loop_1_height);
  fill(black);
  circle(loop_1_cir_x, loop_1_cir_y, loop_1_cir_diameter);
  //rect(loop_one_rect_x_1, loop_one_rect_y_1, loop_one_rect_width_1, loop_one_rect_height_1);
  fill(white);
  textFont(font, 15); 
  textAlign(CENTER, CENTER);
  text(loop_one_text, loop_1_x, loop_1_y, loop_1_width, loop_1_height);

  //Loop all
  //fill(white);
  //rect(loop_rect_x, loop_rect_y, loop_rect_width, loop_rect_height);
  fill(black);
  circle(loop_cir_x, loop_cir_y, loop_cir_diameter);
  //rect(loop_rect_x_1, loop_rect_y_1, loop_rect_width_1, loop_rect_height_1);
  textFont(font, 15); 
  textAlign(CENTER, CENTER);
  fill(black);
  text(loop_all_text, loop_rect_x, loop_rect_y, loop_rect_width, loop_rect_height);


  //Quit button
  fill(black);
  rect(quit_rect_x, quit_rect_y, quit_rect_width, quit_rect_height);
  fill(white);
  textFont(font, 20); 
  textAlign(CENTER, CENTER);
  text(quit_text, quit_rect_x, quit_rect_y, quit_rect_width, quit_rect_height);


  //Description
  textFont(font, 25); 
  textAlign(CENTER, CENTER);
  desc_text = song_meta_data[currentSong].fileName();
  fill(black);
  text(desc_text, desc_x, desc_y, desc_width, desc_height);


  //Mute 
  //rect(mute_rect_x, mute_rect_y, mute_rect_width, mute_rect_height);
  fill(black);
  circle(mute_x, mute_y, mute_diameter);
  fill(white);
  textFont(font, 15); 
  textAlign(CENTER, CENTER);
  text(mute_text, mute_rect_1_x, mute_rect_1_y, mute_rect_1_width, mute_rect_1_height);
  rect(mute_rect_1_x, mute_rect_1_y, mute_rect_1_width, mute_rect_1_height);

  //Volume Up
  //rect(volume_up_rect_x, volume_up_rect_y, volume_up_rect_width, volume_up_rect_height);
  fill(black);
  circle(volume_up_x, volume_up_y, volume_up_diameter);
  fill(white);
  //rect(volume_up_rect_1_x, volume_up_rect_1_y, volume_up_rect_1_width, volume_up_rect_1_height);
  textFont(font, 25); 
  textAlign(CENTER, CENTER);
  text(volume_up_text, volume_up_rect_1_x, volume_up_rect_1_y, volume_up_rect_1_width, volume_up_rect_1_height);

  //Volume Down
  //rect(volume_down_rect_x, volume_down_rect_y, volume_down_rect_width, volume_down_rect_height);
  fill(black);
  circle(volume_down_x, volume_down_y, volume_down_diameter);
  fill(white);
  //rect(volume_down_rect_1_x, volume_down_rect_1_y, volume_down_rect_1_width, volume_down_rect_1_height);
  textFont(font, 25); 
  textAlign(CENTER, CENTER);
  text(volume_down_text, volume_down_rect_1_x, volume_down_rect_1_y, volume_down_rect_1_width, volume_down_rect_1_height);
}
public void retrieve_meta_data() {
  if (need_meta_data == true) {
    //Description
    noStroke();
    rect(desc_x, desc_y, desc_width, desc_height);
    textFont(font, 25); 
    textAlign(CENTER, CENTER);
    desc_text = song_meta_data[currentSong].fileName();
    fill(black);
    text(desc_text, desc_x, desc_y, desc_width, desc_height);
    //meta_data();
    need_meta_data = false;
  }
}
public void load_songs() {
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
public void loop_all_button() {
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
public void loop_one_button() {
  x = mouseX;
  y = mouseY;
  if (mouseX > loop_1_x && mouseX < loop_1_x + loop_1_width && mouseY > loop_1_y && mouseY < loop_1_y + loop_1_height) {
    colour = get(x, y);
    if (colour == black || colour == grey) {
      loop_all = false;
      selected = false;
      if (loop_one == false) {
        loop_one = true;
      }
      if (loop_selected == true) {
        loop_one = false;
        loop_selected = false;
      }
    }
    colour = get(x, y);
    if (colour == white) {
      if (mouseX > loop_one_rect_x_1 && mouseX < loop_one_rect_x_1 + loop_one_rect_width_1 && mouseY > loop_one_rect_y_1 && mouseY < loop_one_rect_y_1 + loop_one_rect_height_1) {
        loop_all = false;
        selected = false;
        if (loop_one == false) {
          loop_one = true;
        }
        if (loop_selected == true) {
          loop_one = true;
          loop_selected = false;
        }
      }
    }
  }
}
public void meta_data() {
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
public void mute_button() {
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
public void next_button() {
  if (currentSong < 4) {
    if (mouseX > next_rect_x_1 && mouseX < next_rect_x_1 + next_rect_width_1 && mouseY > next_rect_y_1 && mouseY < next_rect_y_1 + next_rect_height_1) {
      x = mouseX;
      y = mouseY;
      colour = get(x, y);
      if (colour == white) {
        if (currentSong == 3) {
          if (mouseX > next_rect_x && mouseX < next_rect_x + next_rect_width && mouseY > next_rect_y && mouseY < next_rect_y + next_rect_height) {
            x = mouseX;
            y = mouseY;
            colour = get(x, y);
            if (colour == black) {
              reset_time = true;
              song[currentSong].pause();
              currentSong = currentSong+1;
              song[currentSong].rewind();
              song[currentSong].play();
              need_meta_data = true;
              //end_of_list = true;
            }
            if (mouseX > next_rect_x_1 && mouseX < next_rect_x_1 + next_rect_width_1 && mouseY > next_rect_y_1 && mouseY < next_rect_y_1 + next_rect_height_1) {
              x = mouseX;
              y = mouseY;
              colour = get(x, y);
              if (colour == white) {
                reset_time = true;
                song[currentSong].pause();
                currentSong = currentSong+1;
                song[currentSong].rewind();
                song[currentSong].play();
                need_meta_data = true;
                //end_of_list = true;
              }
            }
          }
        } else {
          reset_time = true;
          song[currentSong].pause();
          currentSong = currentSong+1;
          song[currentSong].rewind();
          song[currentSong].play();
          need_meta_data = true;
        }
      }
    }
    if (mouseX > next_rect_x && mouseX < next_rect_x + next_rect_width && mouseY > next_rect_y && mouseY < next_rect_y + next_rect_height) {
      x = mouseX;
      y = mouseY;
      colour = get(x, y);
      if (colour == black) {
        if (currentSong == 3) {
          if (mouseX > next_rect_x && mouseX < next_rect_x + next_rect_width && mouseY > next_rect_y && mouseY < next_rect_y + next_rect_height) {
            x = mouseX;
            y = mouseY;
            colour = get(x, y);
            if (colour == black) {
              reset_time = true;
              song[currentSong].pause();
              currentSong = currentSong+1;
              song[currentSong].rewind();
              song[currentSong].play();
              need_meta_data = true;
              //end_of_list = true;
            }
          }
        } else {
          reset_time = true;
          song[currentSong].pause();
          currentSong = currentSong+1;
          song[currentSong].rewind();
          song[currentSong].play();
          need_meta_data = true;
        }
      }
    }
  } else {
    if (mouseX > next_rect_x_1 && mouseX < next_rect_x_1 + next_rect_width_1 && mouseY > next_rect_y_1 && mouseY < next_rect_y_1 + next_rect_height_1) {
      x = mouseX;
      y = mouseY;
      colour = get(x, y);
      if (colour == white) {
        reset_time = true;
        song[currentSong].pause();
        currentSong = 0;
        song[0].rewind();
        song[0].play();
        need_meta_data = true;
        end_of_list = false;
      }
    }
    if (mouseX > next_rect_x && mouseX < next_rect_x + next_rect_width && mouseY > next_rect_y && mouseY < next_rect_y + next_rect_height) {
      x = mouseX;
      y = mouseY;
      colour = get(x, y);
      if (colour == black) {
        reset_time = true;
        song[currentSong].pause();
        currentSong = 0;
        song[0].rewind();
        song[0].play();
        need_meta_data = true;
        end_of_list = false;
      }
    }
  }
}
public void play_button() {
  x = mouseX;
  y = mouseY;
  if (mouseX > play_rect_x && mouseX < play_rect_x + play_rect_width && mouseY > play_rect_y && mouseY < play_rect_y + play_rect_height) {
    colour = get(x, y);
    if (song[currentSong].isPlaying()) {
      if (colour == black) {
        song[currentSong].pause();
        need_meta_data = true;
      }
    } else {
      if (colour == black) {
        if (loop_all == false) {
          song[currentSong].play();
          need_meta_data = true;
        } else if (loop_all == true) {
          if (currentSong == 4) {
            reset_time = true;
            currentSong = 0;
            song[0].play();  
            end_of_list = false;
            need_meta_data = true;
          } else {
            song[currentSong].play();
            need_meta_data = true;
          }
        }
      }
    }
  }
  if (mouseX > play_rect_x_1 && mouseX < play_rect_x_1 + play_rect_width_1 && mouseY > play_rect_y_1 && mouseY < play_rect_y_1 + play_rect_height_1) {
    colour = get(x, y);
    if (colour == white) {
      if (song[currentSong].isPlaying()) {
        song[currentSong].pause();
        need_meta_data = true;
      } else {
        if (loop_all == false) {
          song[currentSong].play();
          need_meta_data = true;
        } else if (loop_all == true) {
          if (currentSong == 4) {
            reset_time = true;
            currentSong = 0;
            song[0].play();  
            end_of_list = false;
            need_meta_data = true;
          } else {
            song[currentSong].play();
            need_meta_data = true;
          }
        }
      }
    }
  }
}
public void populating_variables() {
  white = 0xffFFFFFF;
  black = 0xff000000;
  grey = 0xff767676;

  //Play Button
  play_but_x = displayWidth*1/2;
  play_but_y = displayHeight*18/20;
  play_but_diameter = displayWidth*1/20;

  play_tri_1_x = displayWidth*59/120;
  play_tri_1_y = displayHeight*35/40;
  play_tri_2_x = displayWidth*59/120;
  play_tri_2_y = displayHeight*37/40;
  play_tri_3_x = displayWidth*31/60;
  play_tri_3_y = displayHeight*18/20;

  play_rect_x = displayWidth*19/40;
  play_rect_y = displayHeight*137/160;
  play_rect_width = displayWidth*1/20;
  play_rect_height = displayHeight*29/320;

  play_rect_x_1 = displayWidth*77/160;
  play_rect_y_1 = displayHeight*140/160;
  play_rect_width_1 = displayWidth*1/25;
  play_rect_height_1 = displayHeight*16/320;


  //Pause Button
  pause_x_1 = displayWidth*235/480;
  pause_y_1 = displayHeight*141/160;
  pause_x_2 = displayWidth*242/480;
  pause_y_2 = displayHeight*141/160;
  pause_width = displayWidth*1/150;
  pause_height = displayHeight*1/27;


  //Next Button
  next_but_x = displayWidth*24/40;
  next_but_y = displayHeight*18/20;
  next_but_diameter = displayWidth*1/27;

  next_tri_1_x = displayWidth*142/240;
  next_tri_1_y = displayHeight*71/80;
  next_tri_2_x = displayWidth*142/240;
  next_tri_2_y = displayHeight*73/80;
  next_tri_3_x = displayWidth*145/240;
  next_tri_3_y = displayHeight*18/20;

  next_lin_x_1 = displayWidth*291/480;
  next_lin_y_1 = displayHeight*142/160;
  next_lin_width = displayWidth*1/250;
  next_lin_height = displayHeight*17/640;

  next_rect_x = displayWidth*93/160;
  next_rect_y = displayHeight*555/640;
  next_rect_width = displayWidth*37/1000;
  next_rect_height = displayHeight*43/640;

  next_rect_x_1 = displayWidth*93/160;
  next_rect_y_1 = displayHeight*71/80;
  next_rect_width_1 = displayWidth*37/1000;
  next_rect_height_1 = displayHeight*17/640;


  //Previous Button
  prev_but_x = displayWidth*16/40;
  prev_but_y =  displayHeight*18/20;
  prev_but_diameter = displayWidth*1/27;

  prev_tri_1_x = displayWidth*95/240;
  prev_tri_1_y = displayHeight*18/20;
  prev_tri_2_x = displayWidth*98/240;
  prev_tri_2_y = displayHeight*71/80;
  prev_tri_3_x = displayWidth*98/240;
  prev_tri_3_y = displayHeight*73/80;

  prev_lin_x_1 = displayWidth*187/480;
  prev_lin_y_1 = displayHeight*142/160;
  prev_lin_width_1 = displayWidth*1/250;
  prev_lin_height_1 = displayHeight*17/640;

  prev_rect_x = displayWidth*61/160;
  prev_rect_y = displayHeight*555/640;
  prev_rect_width = displayWidth*37/1000;
  prev_rect_height = displayHeight*43/640;

  prev_rect_x_1 = displayWidth*123/320;
  prev_rect_y_1 = displayHeight*71/80;
  prev_rect_width_1 = displayWidth*33/1000;
  prev_rect_height_1 = displayHeight*17/640;


  //Loop All Button
  loop_cir_x = displayWidth*32/40;
  loop_cir_y = displayHeight*18/20;
  loop_cir_diameter = displayWidth*1/27;

  loop_rect_x = displayWidth*125/160;
  loop_rect_y = displayHeight*555/640;
  loop_rect_width = displayWidth*37/1000;
  loop_rect_height = displayHeight*43/640;

  loop_rect_x_1 = displayWidth*126/160;
  loop_rect_y_1 = displayHeight*560/640;
  loop_rect_width_1 = displayWidth*25/1000;
  loop_rect_height_1 = displayHeight*32/640;


  //Loop One Button
  loop_1_cir_x = displayWidth*36/40;
  loop_1_cir_y = displayHeight*18/20;
  loop_1_cir_diameter = displayWidth*1/27;

  loop_1_x = displayWidth*141/160;
  loop_1_y = displayHeight*555/640;
  loop_1_width = displayWidth*37/1000;
  loop_1_height = displayHeight*43/640;

  loop_one_rect_x_1 = displayWidth*142/160;
  loop_one_rect_y_1 = displayHeight*560/640;
  loop_one_rect_width_1 = displayWidth*25/1000;
  loop_one_rect_height_1 = displayHeight*32/640;


  //Description
  desc_x = displayWidth*1/4;
  desc_y = displayHeight*29/40;
  desc_width = displayWidth*1/2;
  desc_height = displayHeight*1/20;


  //Timer
  time_x = displayWidth*38/50;
  time_y = displayHeight*27/40;
  time_width = displayWidth*1/15;
  time_height = displayHeight*1/20;


  //Fast Forward
  forward_cir_x = displayWidth*28/40;
  forward_cir_y = displayHeight*18/20;
  forward_cir_diameter = displayWidth*1/27;

  for_tri_1_x = displayWidth*165/240;
  for_tri_1_y = displayHeight*71/80;
  for_tri_2_x = displayWidth*165/240;
  for_tri_2_y = displayHeight*73/80;
  for_tri_3_x = displayWidth*167/240;
  for_tri_3_y = displayHeight*18/20;

  for_tri_4_x = displayWidth*335/480;
  for_tri_4_y = displayHeight*71/80;
  for_tri_5_x = displayWidth*335/480;
  for_tri_5_y = displayHeight*73/80;
  for_tri_6_x = displayWidth*339/480;
  for_tri_6_y = displayHeight*18/20;

  for_lin_x_1 = displayWidth*340/480;
  for_lin_y_1 = displayHeight*71/80;
  for_lin_width = displayWidth*1/250;
  for_lin_height = displayHeight*17/640;

  for_rect_x = displayWidth*109/160;
  for_rect_y = displayHeight*555/640;
  for_rect_width = displayWidth*37/1000;
  for_rect_height = displayHeight*43/640;

  for_rect_x_1 = displayWidth*110/160;
  for_rect_y_1 = displayHeight*71/80;
  for_rect_width_1 = displayWidth*25/1000;
  for_rect_height_1 = displayHeight*17/640;


  //Rewind Button
  rev_cir_x = displayWidth*12/40;
  rev_cir_y = displayHeight*18/20;
  rev_cir_diameter = displayWidth*1/27;

  rev_tri_1_x = displayWidth*73/240;
  rev_tri_1_y = displayHeight*18/20;
  rev_tri_2_x = displayWidth*75/240;
  rev_tri_2_y = displayHeight*71/80;
  rev_tri_3_x = displayWidth*75/240;
  rev_tri_3_y = displayHeight*73/80;

  rev_tri_4_x = displayWidth*141/480;
  rev_tri_4_y= displayHeight*18/20;
  rev_tri_5_x = displayWidth*145/480;
  rev_tri_5_y = displayHeight*71/80;
  rev_tri_6_x = displayWidth*145/480;
  rev_tri_6_y = displayHeight*73/80;

  rev_lin_x_1 = displayWidth*138/480;
  rev_lin_y_1 = displayHeight*71/80;
  rev_lin_width = displayWidth*1/250;
  rev_lin_height = displayHeight*17/640;

  rev_rect_x = displayWidth*135/480;
  rev_rect_y = displayHeight*555/640;
  rev_rect_width = displayWidth*37/1000;
  rev_rect_height = displayHeight*43/640;

  rev_rect_x_1 = displayWidth*138/480;
  rev_rect_y_1 = displayHeight*71/80;
  rev_rect_width_1 = displayWidth*25/1000;
  rev_rect_height_1 = displayHeight*17/640;


  //Progress Bar
  progress_bar_x_start = displayWidth*1/4;
  progress_bar_x_end = displayWidth*3/4;
  progress_bar_y = displayHeight*7/10;
  progress_bar_width = displayWidth*1/2;
  progress_bar_height = displayHeight*1/135;

  progress_back_x = displayWidth*1/2;
  progress_back_y = displayHeight*1/10;
  progress_back_width = displayWidth*1/2;
  progress_back_height = displayHeight*1/10;


  //Quit Button
  quit_rect_x = displayWidth*37/40;
  quit_rect_y = displayHeight*1/30;
  quit_rect_width = displayWidth*1/20;
  quit_rect_height = displayHeight*1/30;


  //Mute Button
  mute_x = displayWidth*6/40;
  mute_y = displayHeight*18/20;
  mute_diameter = displayWidth*1/27;

  mute_rect_x = displayWidth*63/480;
  mute_rect_y = displayHeight*555/640;
  mute_rect_width = displayWidth*37/1000;
  mute_rect_height = displayHeight*43/640;

  mute_rect_1_x = displayWidth*66/480;
  mute_rect_1_y = displayHeight*560/640;
  mute_rect_1_width = displayWidth*25/1000;
  mute_rect_1_height = displayHeight*32/640;


  //Wave Form Background
  sound_back_x = displayWidth*0;
  sound_back_y = displayHeight*25/50;
  sound_back_width = displayWidth;
  sound_back_height = displayHeight*8/50;


  //Volume Up
  volume_up_x = displayWidth*9/40;
  volume_up_y = displayHeight*18/20;
  volume_up_diameter = displayWidth*1/35;

  volume_up_rect_x = displayWidth*101/480;
  volume_up_rect_y = displayHeight*560/640;
  volume_up_rect_width = displayWidth*29/1000;
  volume_up_rect_height = displayHeight*33/640;

  volume_up_rect_1_x = displayWidth*103/480;
  volume_up_rect_1_y = displayHeight*565/640;
  volume_up_rect_1_width = displayWidth*21/1000;
  volume_up_rect_1_height = displayHeight*20/640;


  //Volume Down
  volume_down_x = displayWidth*3/40;
  volume_down_y = displayHeight*18/20;
  volume_down_diameter = displayWidth*1/35;

  volume_down_rect_x = displayWidth*29/480;
  volume_down_rect_y = displayHeight*560/640;
  volume_down_rect_width = displayWidth*29/1000;
  volume_down_rect_height = displayHeight*33/640;

  volume_down_rect_1_x = displayWidth*31/480;
  volume_down_rect_1_y = displayHeight*565/640;
  volume_down_rect_1_width = displayWidth*21/1000;
  volume_down_rect_1_height = displayHeight*20/640;
  
  //Volume 
  volume_x = displayWidth*5/40;
  volume_y = displayHeight*525/640;
  volume_width = displayWidth*1/20;
  volume_height = displayHeight*1/30;


  font = createFont("Arial", 55);

  number_of_acc_songs = number_of_songs - 1;

  currentSong = 0;
  end_of_list = false;
  next = false;
  reset_time = true;
  recalculate_time = false;
  loop_all = false;
  selected = false;
  loop_selected = false;

  mini_back_x = displayWidth*1/5;
  mini_back_y = displayHeight*0;
  mini_back_width = displayWidth*1/2;
  mini_back_height = displayHeight*1/2;

  loop_all_text = "LOOP ALL";
  loop_one_text = "LOOP ONE";
  quit_text = "QUIT";
  mute_text = "MUTE";
  volume_up_text = "+";
  volume_down_text = "-";
  n = 0;
}
public void prev_button() {
  if (currentSong > 0) {
    if (mouseX > prev_rect_x && mouseX < prev_rect_x + prev_rect_width && mouseY > prev_rect_y && mouseY < prev_rect_y + prev_rect_height) {
      x = mouseX;
      y = mouseY;
      colour = get(x, y);
      if (colour == black) {
        if (currentSong == 1) {
          reset_time = true;
          song[currentSong].pause();
          currentSong = currentSong - 1;
          song[currentSong].rewind();
          song[currentSong].play();
          need_meta_data = true;
          end_of_list = true;
        } else {
          reset_time = true;
          song[currentSong].pause();
          currentSong = currentSong - 1;
          song[currentSong].rewind();
          song[currentSong].play();
          need_meta_data = true;
        }
      }
    }
    if (mouseX > prev_rect_x_1 && mouseX < prev_rect_x_1 + prev_rect_width_1 && mouseY > prev_rect_y_1 && mouseY < prev_rect_y_1 + prev_rect_height_1) {
      x = mouseX;
      y = mouseY;
      colour = get(x, y);
      if (colour == white) {
        if (currentSong == 1) {
          reset_time = true;
          song[currentSong].pause();
          currentSong = currentSong - 1;
          song[currentSong].rewind();
          song[currentSong].play();
          need_meta_data = true;
          end_of_list = true;
        } else {
          reset_time = true;
          song[currentSong].pause();
          currentSong = currentSong - 1;
          song[currentSong].rewind();
          song[currentSong].play();
          need_meta_data = true;
        }
      }
    }
  } else {
    if (mouseX > prev_rect_x && mouseX < prev_rect_x + prev_rect_width && mouseY > prev_rect_y && mouseY < prev_rect_y + prev_rect_height) {
      x = mouseX;
      y = mouseY;
      colour = get(x, y);
      if (colour == black) {
        reset_time = true;
        song[currentSong].pause();
        song[4].rewind();
        song[4].play();
        currentSong = 4;
        need_meta_data = true;
        end_of_list = false;
      }
    }
    if (mouseX > prev_rect_x_1 && mouseX < prev_rect_x_1 + prev_rect_width_1 && mouseY > prev_rect_y_1 && mouseY < prev_rect_y_1 + prev_rect_height_1) {
      x = mouseX;
      y = mouseY;
      colour = get(x, y);
      if (colour == white) {
        reset_time = true;
        song[currentSong].pause();
        currentSong = 4;
        song[4].rewind();
        song[4].play();
        need_meta_data = true;
        end_of_list = false;
      }
    }
  }
}
public void progress_bar_population() {
  stroke(0);
  fill(0xffFFFFFF);
  //rect(progress_bar_x_start, progress_bar_y, progress_bar_width, progress_bar_height);
  //background(#FFFFFF);
  noStroke();
  rect(progress_back_x, progress_back_y, progress_back_width, progress_back_height);
  fill(255); 
  strokeWeight(1);
  fill(0);
  strokeWeight(4);
  stroke(204);
  line(progress_bar_x_start, progress_bar_y, progress_bar_x_end, progress_bar_y ); //where the progress bar should end
  stroke(0);
  TimeStamp = PApplet.parseInt( map(song[currentSong].position(), 0, song[currentSong].length(), progress_bar_x_start, progress_bar_x_end));
  line(progress_bar_x_start, progress_bar_y, TimeStamp, progress_bar_y );
}
public void quit_button() {
  if (mouseX > quit_rect_x && mouseX < quit_rect_x + quit_rect_width && mouseY > quit_rect_y && mouseY < quit_rect_y + quit_rect_height) {
    exit();
  }
}
public void rewind_button() {
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
public void scrollable_list() {
  cp5 = new ControlP5(this);
  cf1 = new ControlFont(createFont("Arial", 10, true), 22);
  list_1 = song_meta_data[0].fileName();
  list_2 = song_meta_data[1].fileName();
  list_3 = song_meta_data[2].fileName();
  list_4 = song_meta_data[3].fileName();
  list_5 = song_meta_data[4].fileName();
  List l = Arrays.asList(list_1, list_2, list_3, list_4, list_5);
  cp5.addScrollableList("dropdown")
    .setPosition(displayWidth*13/45, displayHeight*1/30)
    .setSize(800, 400)
    .setBarHeight(100)
    .setItemHeight(100)
    .setFont(cf1)
    .addItems(l)
    .setColorBackground(color(255))
    .setColorActive(color(240))
    .setColorForeground(color(220))
    .setColorValueLabel(color(20))
    .setColorCaptionLabel(color(20))
    .setType(ScrollableList.LIST) // currently supported DROPDOWN and LIST
    ;
}
public void selected() {
  if (loop_all == true) {
    fill(grey);
    circle(loop_cir_x, loop_cir_y, loop_cir_diameter);
    textFont(font, 15); 
    textAlign(CENTER, CENTER);
    fill(white);
    text(loop_all_text, loop_rect_x, loop_rect_y, loop_rect_width, loop_rect_height);
    selected = true;
  }
  if (loop_all == false) {
    fill(black);
    circle(loop_cir_x, loop_cir_y, loop_cir_diameter);
    textFont(font, 15); 
    textAlign(CENTER, CENTER);
    fill(white);
    text(loop_all_text, loop_rect_x, loop_rect_y, loop_rect_width, loop_rect_height);
  } 
  if (loop_one == true) {
    fill(grey);
    circle(loop_1_cir_x, loop_1_cir_y, loop_1_cir_diameter);
    fill(white);
    textFont(font, 15); 
    textAlign(CENTER, CENTER);
    text(loop_one_text, loop_1_x, loop_1_y, loop_1_width, loop_1_height);
    loop_selected = true;
  }
  if (loop_one == false) {
    fill(black);
    circle(loop_1_cir_x, loop_1_cir_y, loop_1_cir_diameter);
    fill(white);
    textFont(font, 15); 
    textAlign(CENTER, CENTER);
    text(loop_one_text, loop_1_x, loop_1_y, loop_1_width, loop_1_height);
  }
  if (song[currentSong].isMuted()) {
    fill(grey);
    circle(mute_x, mute_y, mute_diameter);
    fill(white);
    textFont(font, 15); 
    textAlign(CENTER, CENTER);
    text(mute_text, mute_rect_1_x, mute_rect_1_y, mute_rect_1_width, mute_rect_1_height);
  } else {
    fill(black);
    circle(mute_x, mute_y, mute_diameter);
    fill(white);
    textFont(font, 15); 
    textAlign(CENTER, CENTER);
    text(mute_text, mute_rect_1_x, mute_rect_1_y, mute_rect_1_width, mute_rect_1_height);
  }
}
public void timer() {
  if (reset_time == true) {
    time = 60;
    reset_time = false;
  }
  if (timer_data_s < 60) {
    timer_data_m = (song[currentSong].position()/1000)/60;
    timer_data_s = (song[currentSong].position()/1000);
    timer_s = timer_data_s;
  } else if (timer_data_s >= (time+60)) {
    timer_data_m = (song[currentSong].position()/1000)/60;
    timer_data_s = (song[currentSong].position()/1000);
    timer_s = timer_data_s - (time);
    if (timer_s > 59) {
      recalculate_time = true;
    }
  } else {
    timer_data_m = (song[currentSong].position()/1000)/60;
    timer_data_s = (song[currentSong].position()/1000);
    timer_s = timer_data_s - (time);
  }
  if (recalculate_time == true) {
    time = time+60;
    recalculate_time = false;
  }
  if (timer_s < 10) {
    song_total_length_m = (song_meta_data[currentSong].length()/1000)/60;
    song_total_length_s = (song_meta_data[currentSong].length()/1000)-((song_meta_data[currentSong].length()/1000)/60 * 60);
    timer_text = timer_data_m + ":0" + timer_s + " / " + song_total_length_m + ":" + song_total_length_s;
    noStroke();
    rect(time_x, time_y, time_width, time_height);
    textFont(font, 25); 
    textAlign(CENTER, CENTER);
    fill(black);
    text(timer_text, time_x, time_y, time_width, time_height);
    fill(white);
  } else {
    song_total_length_m = (song_meta_data[currentSong].length()/1000)/60;
    song_total_length_s = (song_meta_data[currentSong].length()/1000)-((song_meta_data[currentSong].length()/1000)/60 * 60);
    timer_text = timer_data_m + ":" + timer_s + " / " + song_total_length_m + ":" + song_total_length_s;
    noStroke();
    rect(time_x, time_y, time_width, time_height);
    textFont(font, 25); 
    textAlign(CENTER, CENTER);
    fill(black);
    text(timer_text, time_x, time_y, time_width, time_height);
    fill(white);
  }
}
public void volume() {
  song[currentSong].setGain(n);
  strokeWeight(1);
  rect(volume_x, volume_y, volume_width, volume_height);
  fill(black);
  volume = n+26+"";
  volume_text = volume;
  textFont(font, 15); 
  textAlign(CENTER, CENTER);
  text(volume_text, volume_x, volume_y, volume_width, volume_height);
}
public void volume_down() {
  x = mouseX;
  y = mouseY;
  if (mouseX > volume_down_rect_x && mouseX < volume_down_rect_x + volume_down_rect_width && mouseY > volume_down_rect_y && mouseY < volume_down_rect_y + volume_down_rect_height) {
    colour = get(x, y);
    if (colour == black) {
      if (n <= 5 && n > -25) {
        n = n - 1;
      }
    }
  }
  if (mouseX > volume_down_rect_1_x && mouseX < volume_down_rect_1_x + volume_down_rect_1_width && mouseY > volume_down_rect_1_y && mouseY < volume_down_rect_1_y + volume_down_rect_1_height) {
    colour = get(x, y);
    if (n <= 5 && n > -25) {
      n = n - 1;
    }
  }
}
public void volume_up() {
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
public void wave_form() {
  fill(white);
  noStroke();
  rect(sound_back_x, sound_back_y, sound_back_width, sound_back_height);
  stroke(0);
  strokeWeight(1);
  for (int i = 0; i < song[currentSong].bufferSize() - 1; i++)
  {
    float x1 = map( i, 0, song[currentSong].bufferSize(), displayWidth*1/4, displayWidth*3/4);
    float x2 = map( i+1, 0, song[currentSong].bufferSize(), displayWidth*1/4, displayWidth*3/4);
    line( x1, displayHeight*15/25 + song[currentSong].left.get(i)*50, x2, displayHeight*15/25 + song[currentSong].left.get(i+1)*50 );
  }
}
public void constant_gui() {
  if (song[currentSong].isPlaying()) {
    fill(black);
    circle(play_but_x, play_but_y, play_but_diameter);
    fill(white);
    rect(pause_x_1, pause_y_1, pause_width, pause_height);
    fill(white);
    rect(pause_x_2, pause_y_2, pause_width, pause_height);
  } else {
    fill(black);
    circle(play_but_x, play_but_y, play_but_diameter);
    fill(white);
    triangle(play_tri_1_x, play_tri_1_y, play_tri_2_x, play_tri_2_y, play_tri_3_x, play_tri_3_y);
  }
}
public void dropdown(int n) {
  println(n, cp5.get(ScrollableList.class, "dropdown").getItem(n));
  if (n == 0) {
    song[currentSong].pause();
    currentSong = 0;
    need_meta_data = true;
    song[currentSong].rewind();
    song[currentSong].play();
  }
  if (n == 1) {
    song[currentSong].pause();
    currentSong = 1;
    need_meta_data = true;
    song[currentSong].rewind();
    song[currentSong].play();
  }
  if (n == 2) {
    song[currentSong].pause();
    currentSong = 2;
    need_meta_data = true;
    song[currentSong].rewind();
    song[currentSong].play();
  }
  if (n == 3) {
    song[currentSong].pause();
    currentSong = 3;
    need_meta_data = true;
    song[currentSong].rewind();
    song[currentSong].play();
  }
  if (n == 4) {
    song[currentSong].pause();
    currentSong = 4;
    need_meta_data = true;
    song[currentSong].rewind();
    song[currentSong].play();
  }
}
public void drawFunction() {
  song[currentSong].isPlaying(); //Returns true or false
  //
  song[currentSong].length(); // returns total length in milliseconds
  song[currentSong].position(); // returns current .isPlaying() position of song in milliseconds
  //
  song[currentSong].play(); //parameter is milli-seconds from start of audio file to start playing
  song[currentSong].pause();
  song[currentSong].rewind();
}
public void instructions() {
  //Instructions
  println("Start of Console");
  println("Click the Canvas to Finish Starting this program");
  //
}
  public void settings() {  fullScreen(); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--hide-stop", "App" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
