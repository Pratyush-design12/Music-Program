String buttonText1 = "Loop";
String buttonText2 = "Mute";
String buttonText3 = "Shuffle";

PFont font;

void textSetup() { 
  font = createFont ("Arial", 55);
}

void textDraw1() { 
  fill(255); 
  textAlign (CENTER, CENTER); 
  textFont(font, 15);
  text(buttonText1, loopX, loopY, loopD);
  fill(255);
}

void textDraw2() {
  fill(255); 
  textAlign (CENTER, CENTER); 
  textFont(font, 15);
  text(buttonText2, muteX, muteY, muteW, muteH);
  fill(255);
}
