void autoText(String string, PFont font, float height, color ink, int alignHorizontal, int alignVertical, float rectX, float rectY, float rectWidth, float rectHeight) {
  float fontSize = height;
  fill(ink); //Blue Ink, copied from Color Selector
  textAlign (alignHorizontal, alignVertical); //Align X&Y, see Processing.org / Reference
  //Values: LEFT | CENTER | RIGHT & TOP | CENTER | BOTTOM | BASELINE

  //Reference to Text Calculator
  if (string.length() >= 13) { //Number changes depending on geometry ratio (width/height)
    fontSize = textCalculator(height, string, rectWidth);
  } else if (font == levelFont && string.length() == 12) {
    fontSize = fontSize * 0.08; //Option: create catches for font and characters under 13
  } else if (font == levelFont && string.length() == 11) {
    fontSize = fontSize * 0.045; //Option: create catches for font and characters under 13
  } else if (font == levelFont && string.length() == 6) {
    fontSize = fontSize * 0.07; //Option: create catches for font and characters under 13
  } else if (string.length() == 5) { //seems like all fonts with less than 6 characters
    fontSize = fontSize * 0.08; //Option: create catches for font and characters under 13
  } else if (string == quit) { //seems like all fonts with less than 6 characters
    fontSize = fontSize * 0.03; //Option: create catches for font and characters under 13
  } else {
    //Catch for string less than 13 characters
    fontSize = fontSize * 0.08; //Option: create catches for font and characters under 13
  }

  textFont(font, fontSize); //Change the number until it fits, largest font sizetextFont(titleFont, titleFontSize); //Change the number until it fits, largest font size //titleFontSize
  text(string, rectX, rectY, rectWidth, rectHeight);
  fill(255); //Reset to white for rest of the program
}

//Exemplar RETURN with Parameters
float bbtextCalculator(float size, String string, float rectWidth) {
  float i = 1;
  textSize(size); //For textWidth Sizing
  while (textWidth(string) > rectWidth) {
    size = size * i;
    textSize (size);
    i = i - 0.0001;
  }
  return size; //Purpose of Calculator
}
