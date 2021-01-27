String buttonText = "X";
String buttonText2 = "Loop";
String buttonText3 = " Shuffle ";
String buttonText4 = "Mute";
String buttonText5 = "Stop";
String buttonText6 = "amp";
String buttonText7 = "-";
String buttonText8 = " 19th Floor - Bobby Richards     ";
String buttonText9 = " Away - Patrick Patrikios     ";
String buttonText10 = " Awful - josh pan    ";
String buttonText11 = " Breatha - josh pan    ";
String buttonText12 = " June - Bobby Richards    ";
String buttonText13 = " Phrase Prant - josh pan    ";
String buttonText14 = " Piano Trap Beethoven - josh pan    ";
String buttonText15 = " Stairway - Patrick Patrikios    ";
String buttonText16 = " Tak - Bobby Richards    ";
String buttonText17 = "  Voices - Patrick Patrikios   ";

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

void textDraw6() {
  fill(black); 
  textAlign (CENTER, CENTER); 
  textFont(titlefont, 15);
  text(buttonText6, volumerectX, volumerectY, volumerectW, volumerectH);
  fill(255);
}

void textDraw7() {
  fill(black); 
  textAlign (CENTER, CENTER); 
  textFont(titlefont, 25);
  text(buttonText7, downvolumerectX, downvolumerectY, downvolumerectW, downvolumerectH);
  fill(255);
}
// Song Names

void textDraw8() {
  fill(black); 
  textAlign (CENTER, CENTER); 
  textFont(titlefont, 25);
  text(buttonText8, song1X, song1Y, song1W, song1H);
  fill(255);
}
void textDraw9() {
  fill(black); 
  textAlign (CENTER, CENTER); 
  textFont(titlefont, 25);
  text(buttonText9, song2X, song2Y, song2W, song2H);
  fill(255);
}

void textDraw10() {
  fill(black); 
  textAlign (CENTER, CENTER); 
  textFont(titlefont, 25);
  text(buttonText10, song3X, song3Y, song3W, song3H);
  fill(255);
}
void textDraw11() {
  fill(black); 
  textAlign (CENTER, CENTER); 
  textFont(titlefont, 25);
  text(buttonText11, song4X, song4Y, song4W, song4H);
  fill(255);
}
void textDraw12() {
  fill(black); 
  textAlign (CENTER, CENTER); 
  textFont(titlefont, 25);
  text(buttonText12,  song5X, song5Y, song5W, song5H);
  fill(255);
}
void textDraw13() {
  fill(black); 
  textAlign (CENTER, CENTER); 
  textFont(titlefont, 25);
  text(buttonText13, song6X, song6Y, song6W, song6H);
  fill(255);
}
void textDraw14() {
  fill(black); 
  textAlign (CENTER, CENTER); 
  textFont(titlefont, 25);
  text(buttonText14, song7X, song7Y, song7W, song7H);
  fill(255);
}
void textDraw15() {
  fill(black); 
  textAlign (CENTER, CENTER); 
  textFont(titlefont, 25);
  text(buttonText15, song8X, song8Y, song8W, song8H);
  fill(255);
}
void textDraw16() {
  fill(black); 
  textAlign (CENTER, CENTER); 
  textFont(titlefont, 25);
  text(buttonText16, song9X, song9Y, song9W, song9H);
  fill(255);
}
void textDraw17() {
  fill(black); 
  textAlign (CENTER, CENTER); 
  textFont(titlefont, 25);
  text(buttonText17, song10X, song10Y, song10W, song10H);
  fill(255);
}
