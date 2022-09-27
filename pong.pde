boolean keys[] = new boolean [4];
boolean playGame = false;

int ballwidth;
int batwidth;
int batdepth;
Ball ball;
Bat player1;
Bat player2;

void setup() {
 size(800,600);
 frameRate(60);
 textAlign(LEFT,CENTER);
 ballwidth = 20;
 batwidth = 100;
 ball = new Ball(width/2 - ballwidth/2 , height/2 - ballwidth/2, 20);
 player1 = new Bat(width/2 - batwidth/2 , batwidth - 20, batwidth, 20);
 player2 = new Bat(width/2 - batwidth/2, height - batwidth, batwidth, 20);
}

void draw() {
  if (playGame) {
  background(0);
  ball.draw();
  player1.draw();
  player2.draw();
  scoreCounter(ball, player1, player2);
  wallCollision(ball);
  playerActions(keys, player1, player2);
  ballBatCollision(ball, player1);
  ballBatCollision(ball, player2);
  ball.move();
  } else { 
    background(128,0,0);
  }
}
