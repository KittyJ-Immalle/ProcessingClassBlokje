class Blokje {
  float xPos, yPos, xWidth = 10, yHeight = 10;
  int direction;
  Blokje(float xPos, float yPos) {
    this.xPos = xPos;
    this.yPos = yPos;
  }
  
  void update() {
    rect(xPos, yPos, xWidth, yHeight);
  }
  
  void changeDirection(int d) {
    direction = d;
    }
  
  
  void move() {
    switch (direction) {
      case 0:
        xPos++;
        fill(255,255,153);
        stroke(255,255,153);
        break;
      case 1:
        yPos++;
        fill(0,128,255);
        stroke(0,128,255);
        break;
      case 2:
        xPos--;
        fill(153,51,255);
        stroke(153,51,255);
        break;
      case 3:
        yPos--;
        fill(204, 0, 102);
        stroke(204, 0, 102);
        break;
    }
  }
  
  void grow() {
      xWidth++;
      yHeight++;
  }
  
  void reset() {
    xWidth = 10;
    yHeight = 10;
  }
  
}