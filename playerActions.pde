void playerActions(boolean[] keysPressed, Bat player1, Bat player2) {
  if (keysPressed[0]) {
    player1.left = true;
    player1.left();
  } else player1.left = false;
  if (keysPressed[1]) {
    player1.right = true;
    player1.right();
  } else player1.right = false;
  if (keysPressed[2]) {
    player2.left = true;
    player2.left();
  } else player2.left = false;
  if (keysPressed[3]) {
    player2.right = true;
    player2.right();
  } else player2.right = false;
}
