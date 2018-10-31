class Star extends GameObject{
  
  Star() {
    x=random(0,width);
    y=0;
    dx=0;
    dy=random(1,4);
  }
  
  void show() {
    fill(255);
    rect(x,y,dy,dy);
  }
  
  void act() {
    y+=dy;
    x+=dx;
  }
  
  boolean hasDied() {
    return y>height;
  }
}
