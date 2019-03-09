class Cell {

  float x, y;
  float w;

  int state;
  int previous;

  Cell(float x_, float y_, float w_) {
    x = x_;
    y = y_;
    w = w_;
    
    state = int(random(2));
    previous = state;
  }
  
  void savePrevious() {
    previous = state; 
  }

  void newState(int s) {
    state = s;
  }

  void display() {
    if (previous == 0 && state == 1) fill(255, 0, 255); // pink
    else if (state == 1) fill(0, 255, 0); // green
    else if (previous == 1 && state == 0) fill(255, 150, 0); // orange
    else fill(0, 255, 255); 
    noStroke();
    rect(x, y, w, w);
  }
}
