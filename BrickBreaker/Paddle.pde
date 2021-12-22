class Paddle {
  int ph, pw;
  color pc;
  int px, py;
  
  Paddle (int w, int h) {

    py = height - 40;
    ph = h;
    pw = w;
    pc = 255;
  }
  
  void display() {
    fill(pc);
    rect(px, py, pw, ph);
  }
}
