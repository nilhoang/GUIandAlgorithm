color purple = #FF03F3;
color yellow = #FFF703;
color regularButton = purple;
color hoverOverButton = yellow;
String quit= "Quit";

void quitButtonSetup() {
  titleFont = createFont ("Harrington", 55); //Must also Tools / Create Font / Find Font / Do Not Press "OK"
}

void quitButtonDraw() {
  //println ("Mousex:", mouseX, "\tMouseY:", mouseY);
  if (mouseX>width*0/12 && mouseX<width*1/12 && mouseY>0 && mouseY<height*1/12) { //Hover Over
    fill(hoverOverButton);
    rect(width*0/12, height*0/12, width*1/12, height*1/12);
  } else {
    fill(regularButton);
    rect(width*0/12, height*0/12, width*1/12, height*1/12);
  }

  //Text in Quit Button
  fill(#2C08FF); //Purple Ink, copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: LEFT | CENTER | RIGHT & TOP | CENTER | BOTTOM | BASELINE
  textFont(titleFont, 15); //Change the number until it fits, largest font size
  text(quit, width*0/12, height*0/12, width*1/12, height*1/12);
  fill(255); //Reset to white for rest of the program
}

void quitButtonMouseClicked() {
  if (mouseX>width*0/12 && mouseX<width*1/12 && mouseY>0 && mouseY<height*1/12) {
    exit();
  }
}
