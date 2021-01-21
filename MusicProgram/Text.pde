String buttonText2 = "Loop";

String buttonText3 = "  Music1    ";
String buttonText4 = "  Music2   ";
String buttonText5 = "  Music3    ";
String buttonText6 = "  Music4    ";
String buttonText7 = "  Music5    ";
String buttonText8 = "  Music6    ";
String buttonText9 = "  Music7    ";
String buttonText10 = " Music8  ";

String buttonText13 = "Mute";
PFont font;

void textSetup() { 
  font = createFont ("Arial", 55);
}

void textDraw2() { 
  fill(white); 
  textAlign (CENTER, CENTER); 
  textFont(font, 15);
  text(buttonText2, loopX, loopY, loopD);
  fill(255);
}
void textDraw3() {
  fill(white); 
  textAlign (CENTER, CENTER); 
  textFont(font, 25);
  text(buttonText3, song1X, song1Y, song1W, song1H);
  fill(255);
}
void textDraw4() {
  fill(white); 
  textAlign (CENTER, CENTER); 
  textFont(font, 25);
  text(buttonText4, song2X, song2Y, song2W, song2H);
  fill(255);
}
void textDraw5() {
  fill(white); 
  textAlign (CENTER, CENTER); 
  textFont(font, 25);
  text(buttonText5, song3X, song3Y, song3W, song3H);
  fill(255);
}
void textDraw6() {
  fill(white); 
  textAlign (CENTER, CENTER); 
  textFont(font, 25);
  text(buttonText6, song4X, song4Y, song4W, song4H);
  fill(255);
}
void textDraw7() {
  fill(white); 
  textAlign (CENTER, CENTER); 
  textFont(font, 25);
  text(buttonText7, song5X, song5Y, song5W, song5H);
  fill(255);
}
void textDraw8() {
  fill(white); 
  textAlign (CENTER, CENTER); 
  textFont(font, 25);
  text(buttonText8, song6X, song6Y, song6W, song6H);
  fill(255);
}
void textDraw9() {
  fill(white); 
  textAlign (CENTER, CENTER); 
  textFont(font, 25);
  text(buttonText9, song7X, song7Y, song7W, song7H);
  fill(255);
}
void textDraw10() {
  fill(white); 
  textAlign (CENTER, CENTER); 
  textFont(font, 25);
  text(buttonText10, song8X, song8Y, song8W, song8H);
  fill(255);
}

void textDraw13() {
  fill(white); 
  textAlign (CENTER, CENTER); 
  textFont(font, 15);
  text(buttonText13, muteX, muteY, muteW, muteH);
  fill(255);
}
