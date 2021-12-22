class Ball {
  int cx, cy;
  int cxVel, cyVel;
  int cradius;
  color cc;
  
  Ball(int x, int y, int xVel, int yVel, int r) {
    cx = x;
    cy = y;
    cxVel = xVel;
    cyVel = yVel; 
    cradius = r;
    cc = 255;
  }
  
  void display() {
    fill(cc);
    circle(cx, cy, cradius*2);
  }

  void move() {
    if (cx <= cradius || cx >= (width-cradius)) {
      cxVel *= -1;
    }
    if ( cy <= cradius ) {
      cyVel *= -1;
    }
    if ( cy >= (height-cradius)) {
      stop();
    }
    cx+= cxVel;
    cy+= cyVel;
  }
  
  boolean detect(Paddle p) {
    int checkX = this.cx;
    int checkY = this.cy;
    float d;
    
    if (this.cx <= p.px) {
      checkX = p.px;
    } 
    else if (this.cx >= p.px+p.pw) {
      checkX = p.px + p.pw;
    }
    if (this.cy <= p.py) {
      checkY = p.py;
    } 
    else if (this.cy >= p.py + p.ph) {
      checkY = p.py+p.ph;
    }
    d = dist(this.cx, this.cy, checkX, checkY);

    return (d <= this.cradius);
  }
  
  void bounce(Paddle p) {
    if (detect(p)) {
      cyVel*=-1;
    }
    if (detect(p) && cx <= p.px+(p.pw/2) && cxVel > 0) {
      cxVel*=-1;
    }
    if (detect(p) && cx > p.px+(p.pw/2) && cxVel < 0) {
      cxVel*=-1;
    }
    
    
  }
    
}
