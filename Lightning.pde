int x1 = (int)(Math.random() * 751);
int y1 = 0;
int x2;
int y2;
boolean mouseDown = false;

void setup() {
  size(750, 750);
  background(0, 0, 0);
  drawClouds();
  frameRate(10);
}
void draw() {
  // if (mouseDown == true) {
    noStroke();
    fill(0, 0, 0, 50);
    rect(0, 0, 800, 800);
    for(int e = 0; e < 100; e++) {
      x2 = x1 + (int)(Math.random() * 36 - 18);
      y2 = y1 + (int)(Math.random() * 18);
      strokeWeight(3);
      stroke(100 + (int)(Math.random() * 50), 100 + (int)(Math.random() * 100), 255);
      line(x1, y1, x2, y2);
      drawClouds();
      x1 = x2;
      y1 = y2;
    }
    x1 = (int)(Math.random() * 751);
    y1 = 0;
    // mouseDown = false;
  // }
}
void mousePressed() {
  // if (mouseDown == false) {
    // mouseDown = true;
    redraw();
  // } else {
  // mouseDown = false;
  // }
}

void drawClouds() {
  noStroke();
  fill(200, 200, 255);
  rect(0, 0, 750, 100);
  ellipse(100, 100, 200, 100);
  ellipse(200, 90, 175, 100);
  ellipse(300, 100, 150, 125);
  ellipse(400, 110, 200, 100);
  ellipse(500, 90, 175, 100);
  ellipse(600, 100, 200, 100);
  ellipse(700, 90, 150, 100);
}
