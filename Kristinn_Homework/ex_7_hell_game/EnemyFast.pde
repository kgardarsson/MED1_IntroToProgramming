class EnemyFast extends Enemy {
  
  
  EnemyFast(float incomingX,float incomingY) {
    super(incomingX,incomingY);
    dy=4;
    w=30;
  }
  
  void show() {
    image(fastZombie,x,y,w,h);
  }
}
