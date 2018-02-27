Blokje b1;
Blokje b2;

void setup() {
  size(400,400);
  background(0);
  b1 = new Blokje(20, 20);
  b2 = new Blokje(100, 20);
  fill(204, 0, 102);
  stroke(204, 0, 102);
}

void draw() {
  background(255, 204, 255);
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
  if (keyPressed && (keyCode == RIGHT)) {
    b1.changeDirection(0);
    b2.changeDirection(0);
    println("Direction changed to RIGHT");
  }
  if (keyPressed && (keyCode == DOWN)) {
    b1.changeDirection(1);
    b2.changeDirection(1);
    println("Direction changed to DOWN");
  }
  if (keyPressed && (keyCode == LEFT)) {
    b1.changeDirection(2);
    b2.changeDirection(2);
    println("Direction changed to LEFT");
  }
  if (keyPressed && (keyCode == UP)) {
    b1.changeDirection(3);
    b2.changeDirection(3);
    println("Direction changed to UP");
  }
  if (keyPressed && (key == 'r' | key == 'R')) {
    b1.reset();
    b2.reset();
  }
  
}

class Blokje {
  float xPos, yPos, xWidth = 10, yHeight = 10;
  int direction;
  Blokje(float xPos, float yPos) {
    this.xPos = xPos;
    this.yPos = yPos;
    rect(xPos, yPos, xWidth, yHeight);
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