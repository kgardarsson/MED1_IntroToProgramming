class Launcher extends GameObject {
  
  Launcher() {
    x=width/2;
    y=-100;
    dx=0;
    dy=0;
    w=0;
    h=0;
    hp=1;
  }
  
  void show() {
    fill(100);
    ellipse(x,y,w,h);
  }
  
  void act() {
    if(frameCount<100) {
      //do nothing
    } else if (frameCount<600) {
      straightLine(random(100,300));
    } else if (frameCount<1100) {
      straightLine(random(width-300,width-100));
    } else if (frameCount<1600) {
      phase=2;                      //No Enemies
    } else if (frameCount<2400) {
      randomWave();
    } else if (frameCount<2900) {
      phase=3;                      //No Enemies
    } else if (frameCount<4900) {
      bossWave();
    }
  }
  
  void straightLine(float incomingX) {
    x=incomingX;
    if(frameCount % 50 == 0) {//modulus
      engine.add(new Enemy(x,y));
    }
  }
  
  void randomWave() {
    x=random(50,width-50);
    if(frameCount % 50 == 0) {//modulus
      engine.add(new Enemy(x,y));
    }
    if(frameCount % 300 == 0) {//modulus
      engine.add(new EnemyFast(x,y));
    }
  }
  
  void bossWave() {
    x=random(150,width-150);
    if(frameCount==2900) {
      engine.add(new EnemyBoss(width/2,y));
    }
    if(frameCount % 300 == 0) {//modulus
      engine.add(new EnemyFast(x,y));
    }
  }
  
  boolean hasDied() {
    return hp<=0;
  }

}
