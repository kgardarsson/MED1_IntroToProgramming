class Bullet extends GameObject {
  
  Bullet() {
    x=myShip.x;
    y=myShip.y;
    dx=0;
    dy=-15;
    w=5;
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
    return y<0 || hp<=0;
  }
}
