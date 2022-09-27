class Bat {
  float xpos;
  float ypos;
  float bwidth;
  float bdepth = 20;
  float xspeed = 5;
  int score = 0;
  boolean updated = false;
  boolean left = false;
  boolean right = false;
  
  Bat(float x, float y, float w, float d) {
    xpos = x;
    ypos = y;
    bwidth = w;
    bdepth = d;
  }
  
  void draw(){
    noStroke();
    fill(255);
    rect(xpos, ypos, bwidth, bdepth);
  }
  
  void right() {
    if (xpos + bwidth + ballwidth + 1 < width) {
      xpos = xpos + xspeed;
    }
  }
  
  void left() {
    if (xpos - ballwidth - 1 > 0) {
      xpos = xpos - xspeed;
    }
  }
  
  void incrementScore() {
    while (updated==false) {
      score = score + 1;
      updated = true;
    }
  }
  
  void showScore() {
    fill(0);
    text(str(score), xpos+bwidth/2, ypos+bdepth/2);
  }
  
  void reset() {
    xpos = width/2 - bwidth/2;
    updated = false;
  }
}
