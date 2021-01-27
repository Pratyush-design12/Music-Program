String buttonText = "X";
String buttonText2 = "Loop";
String buttonText3 = " Shuffle ";
String buttonText4 = "Mute";
String buttonText5 = "Stop";
PFont titlefont;

void textSetup() { 
  
  titlefont = createFont ("Arial", 55);
}
void textDraw() { 
  fill(black); 
  textAlign (CENTER, CENTER); 
  textFont(titlefont, 15);
  text(buttonText, quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  fill(255);
}
void textDraw2() { 
  fill(white); 
  textAlign (CENTER, CENTER);
  strokeWeight(5);
  textFont(titlefont, 15);
  text(buttonText2, loopX, loopY, loopD);
  fill(255);
}
void textDraw3() {
  fill(white); 
  textAlign (CENTER, CENTER); 
  textFont(titlefont, 15);
  text(buttonText3, ShuffleX, ShuffleY, ShuffleW, ShuffleH);
  fill(255);
}
void textDraw4() {
  fill(black); 
  textAlign (CENTER, CENTER); 
  textFont(titlefont, 15);
  text(buttonText4, muteX, muteY, muteW, muteH);
  fill(255);
}

void textDraw5() {
  fill(black); 
  textAlign (CENTER, CENTER); 
  textFont(titlefont, 15);
  text(buttonText5, stopX, stopY, stopW, stopH);
  fill(255);
}
