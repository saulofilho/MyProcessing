class Bubble {
  float x;
  float y;
  float diameter;
  float yspeed;
  Bubble(float tempD) {
    x = random(width);
    y = height;
    diameter = tempD;
    yspeed = random(0.5,2.5);
  }
  void ascend() {
    y = y - yspeed;
    x = x + random(-2,2);
  }
  void display() {
    stroke(255, 255, 0); //yellow
    strokeWeight(random(1,15));
    fill(255, 0, 255); //pink
    ellipse(x, y, diameter, diameter);
  }
  void top() {
    if (y < -diameter/2) {
      y = height+diameter/2;
    }
  }
}





////LIXO////
//float x;
//float y;
//void setup() {
//  size(900, 680);
//  x = width/2;
//  y = height;
//}
//void draw() {
//  background(238, 233, 12);
//  display();
////  ascend();
////  top();
//}
//void display() {
//  stroke(123, 144, 234);
//  strokeWeight(3);
//  fill(234, 123, 34);
//}
