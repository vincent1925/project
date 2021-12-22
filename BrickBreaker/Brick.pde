class Brick {
  int rx, ry;
  int rw, rh; 
  color rc; 
  boolean alive;
  
  Brick(int x, int y, int w, int h) {
    rx = x;
    ry = y;
    rw = w;
    rh = h;
    rc = 255;
    alive = true;
  }
  
  void display() {
    fill(rc);
    rect(rx, ry, rw, rh);
  }
  
  boolean detect(Ball b) {
    int checkX = b.cx;
    int checkY = b.cy;
    float d;
    
    if (b.cx <= rx) {
      checkX = rx;
    } 
    else if (b.cx >= rx+rw) {
      checkX = rx + rw;
    }
    if (b.cy <= ry) {
      checkY = ry;
    } 
    else if (b.cy >= ry + rh) {
      checkY = ry+rh;
    }
    d = dist(b.cx, b.cy, checkX, checkY);

    return (d <= b.cradius);
  }
  
  void deadoralive(Ball b) {    
    if (detect(b)) {
      alive = false;
    }
  }
  
}
