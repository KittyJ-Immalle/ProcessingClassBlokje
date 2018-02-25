Blokje b1;
Blokje b2;

void setup() {
  size(400,400);
  background(255);
  b1 = new Blokje(20, 20);
  b2 = new Blokje(50, 20);
}

void draw() {
  if (mousePressed) {
    background(255);
    rect(mouseX, mouseY, 10, 10);
    b1.update();
    b2.update();
  } else {
    background(255);
    b1.update();
    b2.update();
  }
  
}

class Blokje {
  float xPos, yPos, xWidth = 10, yHeight = 10;
  Blokje(float xPos, float yPos) {
    this.xPos = xPos;
    this.yPos = yPos;
    rect(xPos, yPos, xWidth, yHeight);
  }
  
  void update() {
    if (mousePressed && (mouseButton == LEFT)) {
      xPos++;
      yPos++;
    }
    if (mousePressed && (mouseButton == RIGHT)) {
      xWidth++;
      yHeight++;
    }
    rect(xPos, yPos, xWidth, yHeight);
  }
}