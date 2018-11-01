class EnemyFast extends Enemy {
  
  EnemyFast() {
    
  }
  
  EnemyFast(float incomingX,float incomingY) {
    x=incomingX;
    y=incomingY;
    dx=0;
    dy=4;
    w=30;
    h=2*w;
    hp=1;
  }
  
  void show() {
    image(fastZombie,x,y,w,h);
  }
}
