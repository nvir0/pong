void ballBatCollision(Ball ball, Bat bat) {
  // bottom of the ball clips the top of the bat
  if ( //hitleft
  ball.xpos + ball.bwidth >= bat.xpos && // right edge of the ball clips the left edge of the bat
  ball.xpos + ball.bwidth < bat.xpos + ball.bwidth/2 && // right edge of the ball is on the left of the middle of the bat
  ball.ypos + ball.bwidth > bat.ypos + bat.bdepth/4 && // bottom edge of the bat
  ball.ypos < bat.ypos + bat.bdepth - bat.bdepth/4
  ) {
    //println("hitleft");
    ball.xpos = bat.xpos - ball.bwidth;
    if (ball.updatexdir) {
      ball.changexdir();
      ball.updatexdir = false;
    }
    if (ball.changexspeed){
      ball.changexspeed = false;
      /*if (ball.xspeed > 0) ball.xspeed = ball.xspeed + bat.xspeed/5;
      if (ball.xspeed < 0) ball.xspeed = ball.xspeed - bat.xspeed/5;
      if (ball.xspeed == 0) ball.xspeed = bat.xspeed/5;*/
    }
    ball.updateydir = false;
  } //else println("");
  
  if ( //hitright
  ball.xpos <= bat.xpos + bat.bwidth && // left edge of the ball clips the right edge of the bat
  ball.xpos >= bat.xpos + bat.bwidth - ball.bwidth/2 && // left edge of the ball is on the right of the middle of the bat
  ball.ypos + ball.bwidth >= bat.ypos + bat.bdepth/4 &&
  ball.ypos <= bat.ypos + bat.bdepth - bat.bdepth/4
  ) { 
   // println("hitright");
    ball.xpos = bat.xpos + bat.bwidth;
    if (ball.updatexdir) {
      ball.changexdir();
      ball.updatexdir = false;
    }
    if (ball.changexspeed){
      ball.changexspeed = false;
      /*if (ball.xspeed > 0) ball.xspeed = ball.xspeed + bat.xspeed/5;
      if (ball.xspeed < 0) ball.xspeed = ball.xspeed - bat.xspeed/5;
      if (ball.xspeed == 0) ball.xspeed = bat.xspeed/5;*/
    }
    ball.updateydir = false;
  } //else println("");
  
  if ( //hittop
  ball.xpos + ball.bwidth > bat.xpos && // left egde of the ball is over the bat
  ball.xpos < bat.xpos + bat.bwidth &&
  ball.ypos + ball.bwidth > bat.ypos && // bottom of the ball clips the top of the bat
  ball.ypos + ball.bwidth < bat.ypos + bat.bdepth/2 // bottom of the ball is highrt than the middle of th bat's height
  ) if (ball.updateydir && ball.ypos > height/2) ball.changeydir(ball.xpos + ball.bwidth /2, bat.xpos + bat.bwidth / 2, bat.bwidth, bat);
  //else println(" ");
  
  if ( // hitbottom
  ball.xpos + ball.bwidth > bat.xpos && // left egde of the ball is over the bat
  ball.xpos < bat.xpos + bat.bwidth &&
  ball.ypos > bat.ypos + bat.bdepth - bat.bdepth /2 &&
  ball.ypos < bat.ypos + bat.bdepth
  ) if (ball.updateydir && ball.ypos < height/2) ball.changeydir(ball.xpos + ball.bwidth /2, bat.xpos + bat.bwidth / 2, bat.bwidth, bat);
  // else println("");

}
