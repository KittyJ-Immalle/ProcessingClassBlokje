Blokje b1;
Blokje b2;

void setup() {
  size(400,400);
  background(255);
  b1 = new Blokje(20, 20);
  b2 = new Blokje(50, 20);
}

void draw() {
  if (mousePressed == true) {
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
  float xPos, yPos;
  Blokje(float xPos, float yPos) {
    this.xPos = xPos;
    this.yPos = yPos;
    rect(xPos, yPos, 10, 10);
  }
  
  void update() {
    if (mousePressed == true) {
      xPos++;
      yPos++;
    }
    rect(xPos, yPos, 10, 10);
  }
}