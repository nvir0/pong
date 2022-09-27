class Ball {
  float xpos;
  float ypos;
  float bwidth;
  float xspeed = random(-1,1);
  float yspeed;
  boolean updateydir = true;
  boolean updatexdir = true;
  boolean changexspeed = true;
  
  Ball(float x, float y, float w) {
    xpos = x;
    ypos = y;
    bwidth = w;
    
    if(random(1)< 0.5) {
      yspeed = 1;
    } else yspeed= -1;
  }
  
  void flash() {
    fill(0,255,0);
  }
  
  void draw() {
    noStroke();
    fill(255);
    rect(xpos, ypos, bwidth, bwidth);
  }
  
  void move() {
    xpos = xpos + xspeed;
    ypos = ypos + yspeed;
  }
  
  void changexdir() {
    xspeed = xspeed * -1;
  }
  
  void changeydir(float mbx, float mpx, float bw, Bat bat) {
      if (yspeed > 0) yspeed = yspeed + 0.05;
      if (yspeed < 0) yspeed = yspeed - 0.05;
      if (ypos < height/2) ypos = bat.ypos + bat.bdepth;
      if (ypos > height/2) ypos = bat.ypos - bwidth;
      if (bat.right) xspeed = xspeed + bat.xspeed/5;
      if (bat.left) xspeed = xspeed - bat.xspeed/5;
      yspeed = yspeed * -1;
      if (bat.left == false && bat.right == false) xspeed = xspeed + ((mbx - mpx)/(bw/2)/2);
  }
  
  void reset() {
    xpos = width/2 - bwidth / 2;
    ypos = height /2 - bwidth / 2;
    if(random(1)< 0.5) {
      yspeed = 1;
    } else yspeed= -1;
    xspeed = random(-1,1);
    updatexdir = true;
    updateydir = true;
    changexspeed = true;
  }
}
