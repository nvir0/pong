void scoreCounter(Ball ball, Bat player1, Bat player2) {
  player1.showScore();
  player2.showScore();
  
  if (ball.ypos <= 0 ){
    player2.incrementScore();
    ball.reset();
    player1.reset();
    player2.reset();
    delay(3000);
  }
  if (ball.ypos + ball.bwidth >= height){
    player1.incrementScore();
    ball.reset();
    player1.reset();
    player2.reset();
    delay(3000);
  }
}
