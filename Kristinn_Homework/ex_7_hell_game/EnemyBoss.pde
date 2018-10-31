class EnemyBoss extends Enemy {
  
  
  EnemyBoss(float incomingX,float incomingY) {
    super(incomingX,incomingY);
    w=100;
    h=w;
    dy=0.3;
    hp=800;
  }
  
  void show() {
    image(bossImg,x,y,w,h);
  }
  
  void act() {
    x+=dx;
    y+=dy;
    checkCollisions();
  }

}
