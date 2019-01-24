// This Is An Experiment

//void setup() {
//  size(900,560);
//}

//REPLICANDO RETÂNGULOS
// void draw() {
//  fill(250, 250, 250);
//  stroke(0, 255, 0);
//  rectMode(CENTER);
//  rect(mouseX, mouseY, 100, 50);
// }

//DESENHANDO LINHAS
// void draw() {
//  stroke(255, 0, 0);
//  line(pmouseX, pmouseY, mouseX, mouseY);
//}
//void mousePressed() {
//  background(0, 0, 0);
//}

//BOLA CAINDO NA TELA
//int circleX;
//int circleY;
//void draw() {
//  fill(0, 250, 250);
//  ellipse(circleX,circleY,24,24);
//  circleX = circleX + 1;
//  circleY = circleY + 1;
//}

//BOLAS
//float circleX;
//float circleY;
//void draw() {
//  circleX = random(width);
//  circleY = random(height);
//  fill(123, 213, 126);
//  stroke(250, 250, 250);
//  ellipse(circleX, circleY, 50, 50);
//}

////bola flutuando
//float circleX = 0;
//  void draw() {
//    fill(255, 23, 120);
//    ellipse(circleX, 80, 36, 24);
//    circleX = circleX +1;
//  }

////bola quicando
//!!!definir variavel no setup: circleS = 0;!!!
//float circleS;
//float Sspeed = 10;
//void draw() {
//  background(34, 48, 124);
//  fill(126, 128, 11);
//  stroke(12, 123, 13);
//  ellipse(width/2, circleS, 12, 12);
//  circleS = circleS + Sspeed;
//  if (circleS > height || circleS < 0) {
//    Sspeed = Sspeed * -1.1;
//  }
//}

//bola passando
//float s = 0;
//void draw() {
//  background(0);
//  if (s < width) {
//    s = s + 1;
//  }
//  fill(129, 38, 89);
//  stroke(129, 123, 203);
//  ellipse(s, 150, 8, 8);
//}

////grid
//float spacing = 50;
//float s = 0;
//float f = 0;
//void draw() {
//  background(0);
//  spacing = spacing + random(-2,2);
//  stroke(122, 31, 39);
//  strokeWeight(2);
//  s = 0;
//  while (s < width) {
//  line(s, 0, s, height);
//  s = s + spacing;
//}
//  f = 0;
//  while (f < height) {
//    line(0, f, width, f);
//    f = f + spacing;
//  } 
//}

////grid lines while and for
//void draw() {
//  background(0);
//  strokeWeight(2);
//  stroke(13, 49, 129);
//  int s = 0;
//  while (s < width) {
//    line(s, 0, s, height);
//    s = s + 20;
//  }
//  for (int f = 0; f < height; f = f + 20) {
//    line(0, f, width, f);
//  }
//}

////grid malha
//void draw() {
//  background(12, 128, 210);
//  strokeWeight(1);
//  stroke(129, 13, 210);
//  for (int f = 0; f < height; f = f + 5) {
//    for (int s = 0; s < width; s = s + 5) {
//      fill(random(255));
//      rect(s, f, 5, 5);
//    }
//  }
//}

////bola viajando pela tela
//float s = 0;
//float f = 0;
//float sspeed = 5;
//float fspeed = 2.5;
//void draw() {
//  background(190, 189, 29);
//  stroke(134, 239, 10);
//  fill(127, 249, 148);
//  ellipse(s, f, 10, 10);
//  s = s + sspeed;
//  f = f + fspeed;
//  if (s > width || s < 0) {
//    sspeed = sspeed * -1;
//  }
//  if (f > height || f < 0) {
//    fspeed = fspeed * -1;
//  }
//}

//bola viajando pela tela 2
Ball s;
void setup() {
  size(600, 420);
  s = new Ball();
}
void draw() {
  background(123, 239, 253);
  s.update();
  s.checkEdges();
  s.display();
}
