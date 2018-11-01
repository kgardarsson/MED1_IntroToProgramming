class EnemyBoss extends Enemy {
  
  EnemyBoss() {
    
  }
  
  EnemyBoss(float incomingX,float incomingY) {
    x=incomingX;
    y=incomingY;
    dx=0;
    dy=0.3;
    w=100;
    h=w;
    hp=800;
  }
  
  void show() {
    float hpBossY;
    
    image(bossImg,x,y,w,h);
    
    //Boss Health Bar
    stroke(1);
    if(hp>500) {
      fill(purple);
    } else if(hp>200) {
      fill(yellow);
    } else {
      fill(red);
    }
    if(y>100) {
      hpBossY=y-100;
    } else {
      hpBossY=y+100;
    }
    rectMode(CORNER);
    rect(x-40,hpBossY,hp/10,5);
    rectMode(CENTER);
  }
  
  void act() {
    x+=dx;
    y+=dy;
    checkCollisionsEnemy();
    shoot();
    if(y>=height) {
      myShip.hp=0;
    }
  }
  
  void shoot() {
    if(frameCount % 320 == 0) {
      engine.add(new BulletEnemy(x,y,random(0.3,1),3));
    } else if (frameCount % 160 == 0) {
      engine.add(new BulletEnemy(x,y,random(-1,-0.3),3));
    } else if (frameCount % 80 == 0) {
      engine.add(new BulletEnemy(x,y,random(-0.3,0.3),3));
    }
  }

}
