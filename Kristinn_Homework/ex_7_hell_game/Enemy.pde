class Enemy extends GameObject {
  
  Enemy(float incomingX, float incomingY) {
    x=incomingX;
    y=incomingY;
    dx=0;
    dy=1;
    w=50;
    h=w;
    hp=1;
  }
  
  void show() {
    image(zombie,x,y,w,h);
  }
  
  void act() {
    x+=dx;
    y+=dy;
    checkCollisions();
  }
  
  void checkCollisions() {
    int i=0;
    while(i<engine.size()) {
      GameObject thing = engine.get(i);
      if(thing instanceof Bullet) {
        if(rectRect(x,y,w,h,thing.x,thing.y,thing.w,thing.h)) {
          hp-=1;
          thing.hp=0;
          if(hp<=0) {
            for(int j=0;j<10;j++) {
              engine.add(new Particle(thing.x,thing.y));
            }
          }
        }
      }
      i++;
    }
  }
  
  boolean hasDied() {
    return y>height+50 || hp<=0;
  }
}
