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
}