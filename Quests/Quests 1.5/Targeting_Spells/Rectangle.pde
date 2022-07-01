class Rect {
  float yPos;
  int rSize;
  float xPos;
  Rect(float xTemp, float yTemp, int rTemp) {
  yPos=yTemp;
  xPos=xTemp;
  rSize=rTemp;
  }
  
  float xSpeed=10;
  float ySpeed=10;
  int xDirection=-1;
  int yDirection=-1;
  
  void Sqr() {
    noStroke();
    frameRate(30);
    rectMode(RADIUS);

    // Update the position of the shape
    xPos = xPos + ( xSpeed * xDirection );
    yPos = yPos + ( ySpeed * yDirection );

    // Test to see if the shape exceeds the boundaries of the screen
    // If it does, reverse its direction by multiplying by -1
    if (xPos > width-rSize || xPos < rSize) {
      xDirection *= -1;
    }
    if (yPos > height-rSize || yPos < rSize) {
      yDirection *= -1;
    }

    // Draw the shape
    rect(xPos, yPos, rSize, rSize);
  }
  float getX() {
    return xPos;
  }
  float getY() {
    return yPos;
  }
  void setDir() {
    yDirection *= -1;
    xDirection *= -1;
  }
  int getR() {
    return rSize;
  }

}
