void wallCollision(Ball ball) {
  if (ball.xpos < 0 || ball.xpos + ball.bwidth > width) {
    ball.changexdir();
  }
}
