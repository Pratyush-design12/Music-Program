void  quit_button() {
 if ( mouseX>quitButtonX &&
    mouseX<quitButtonX+quitButtonWidth &&
    mouseY>quitButtonY &&
    mouseY<quitButtonY+quitButtonHeight )
    exit();

}
