class BulletEnemy extends GameObject {
  
  BulletEnemy() {
    
  }
  
  BulletEnemy(float incomingX, float incomingY, float incomingDX, float incomingDY) {
    x=incomingX;
    y=incomingY;
    dx=incomingDX;
    dy=incomingDY;
    w=25;
    h=25;
    hp=1;
  }
  
  void show() {
    fill(255,0,0);
    noStroke();
    rect(x,y,w,h);
  }
  
  void act() {
    x+=dx;
    y+=dy;
  }
  
  boolean hasDied() {
    return y>height || hp<=0;
  }
}
