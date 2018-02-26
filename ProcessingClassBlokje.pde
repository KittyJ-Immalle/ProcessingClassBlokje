Blokje b1;
Blokje b2;

void setup() {
  size(400,400);
  background(255);
  b1 = new Blokje(20, 20);
  b2 = new Blokje(50, 20);
}

void draw() {
  background(255);
  if (mousePressed) {
    rect(mouseX, mouseY, 10, 10);
  }    
  b1.update();
  b2.update();
  if (mousePressed && (mouseButton == LEFT)) {
    b1.move();
    b2.move();
  }
  if (mousePressed && (mouseButton == RIGHT)) {
    b1.grow();
    b2.grow();
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
    rect(xPos, yPos, xWidth, yHeight);
  }
  
  void move() {
    if (mousePressed && (mouseButton == LEFT)) {
      xPos++;
      yPos++;
    }
    rect(xPos, yPos, xWidth, yHeight);
  }
  
  void grow() {
    if (mousePressed && (mouseButton == RIGHT)) {
      xWidth++;
      yHeight++;
    }
  }
}