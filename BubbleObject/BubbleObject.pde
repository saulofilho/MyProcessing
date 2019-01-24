//Bubble s1;
//Bubble s2;
Bubble[] bubbles = new Bubble[1000];
int total = 0;
void setup() {
  size(1080, 720);
  for (int i = 0; i < bubbles.length; i++) {
    bubbles[i] = new Bubble(random(10, 100)); 
  }
}
void mousePressed() {
  total = total + 1;
}
void draw() {
  background(0, 255, 0); //green
  for (int i = 0; i < total; i++) {
  bubbles[i].ascend();
  bubbles[i].display();
  bubbles[i].top(); 
  }
}
