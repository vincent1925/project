class Grid {
  Brick gridofbricks[][];
  int columnbricks;
  int rowbricks;
  
  Grid(int row, int column) {
    columnbricks = column;
    rowbricks = row;
    gridofbricks = new Brick[rowbricks][columnbricks];
  }
   
  void display (Ball b) {
    int bricksize = width/columnbricks;
    for (int i=0; i<gridofbricks.length; i++) {
      for (int p=0; p<gridofbricks[0].length; p++) {
        gridofbricks[i][p] = new Brick(p*bricksize, i*30, bricksize, 30);  
        gridofbricks[i][p].deadoralive(b);
        if (gridofbricks[i][p].alive) {
          gridofbricks[i][p].display();
        }
      }
    }
  }
  
}
