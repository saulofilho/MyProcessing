class Ball {
  float x = 0;
  float y = 0;
  float xspeed = 5;
  float yspeed = 2.5;
  void display() {
    stroke(231, 244, 12);
    fill(129, 234, 244);
    ellipse(x, y, 24, 24);
  }
  void update() {
    x = x + xspeed;
    y = y + yspeed;
  }
  void checkEdges() {
    if (x > width || x < 0) {
      xspeed = xspeed * -1;
    }
    if (y > height || y < 0) {
      yspeed = yspeed * -1;
    }
  }
}
