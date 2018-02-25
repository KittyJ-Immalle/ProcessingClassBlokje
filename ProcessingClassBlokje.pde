void setup() {
  size(400,400);
  background(255);
}

void draw() {
  if (mousePressed == true) {
    background(255);
    rect(mouseX, mouseY, 10, 10);
  } else {
    background(255);
  }
  Blokje b1 = new Blokje(20, 20);
  Blokje b2 = new Blokje(50, 20);
  
  b1.show();
  b2.show();
}

class Blokje {
  float xPos, yPos;
  Blokje(float xPos, float yPos) {
    this.xPos = xPos;
    this.yPos = yPos;
  }
  
  void show() {
    rect(xPos, yPos, 10, 10);
  }
}