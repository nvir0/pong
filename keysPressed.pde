void keyPressed() {
  if (key== 'z')  keys[0] = true;
  if (key == 'x')  keys[1] = true;
  if (key == 'n')  keys[2] = true;
  if (key == 'm')  keys[3] = true;
  if (key==ENTER) {
    delay(500);
    playGame = true;
  }
  if (key=='p') looping = !looping;
  if (key=='q') {
    player1.reset();
    player1.score = 0;
    player2.score = 0;
    player2.reset();
    ball.reset();
    playGame = false;
  }
}

void keyReleased() {
  if (key == 'z')  keys[0] = false;
  if (key == 'x')  keys[1] = false;
  if (key == 'n')  keys[2] = false;
  if (key == 'm')  keys[3] = false;
}
