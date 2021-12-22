Ball rock;
Paddle player;
Grid bricks;

void setup () {
  size (600, 800); 
  frameRate(60);

  rock = new Ball(300, 400, 5, 5, 20);
  player = new Paddle(80, 20);
  bricks = new Grid(4, 8);
  
}

void draw () {
  background(0);
  if (mouseX <= 600 - 80) {
    player.px = mouseX;
  }
  
  rock.display();
  rock.move();
  rock.bounce(player);
  
  player.display();
  
  bricks.display(rock);
  
}
