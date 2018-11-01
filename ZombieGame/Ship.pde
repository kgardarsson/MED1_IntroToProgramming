class Ship extends GameObject {
  
  
  
  Gun myGun;
  
  Ship() {
    x=width/2;
    y=height-25;
    dx=0;
    dy=0;
    w=50;
    h=50;
    hp=3;
    myGun=new GunPistol();
  }
  
  void show() {
    
    float hpDisplayX=myShip.x-45;
    float hpDisplayY=myShip.y-70;
    int hpDisplayW=30*myShip.hp;
    int hpDisplayH=5;
    
    //Ship's Health Bar
    fill(0,255,0);
    rectMode(CORNER);
    textAlign(LEFT,TOP);
    rect(hpDisplayX,hpDisplayY,hpDisplayW,hpDisplayH);
    rectMode(CENTER);
    textAlign(CENTER);
    
    fill(shipColor);
    noStroke();
    rect(x,y,w,h);
  }
  
  void act() {
    dx=0;
    dy=0;
    if(aKey && x>w/2)     dx=-5;
    if(dKey && x<width-w/2)     dx=5;
    if(spaceKey) {myGun.shoot();}
    if(oneKey   && phase>=1) {myGun=new GunPistol();}
    if(twoKey   && phase>=2) {myGun=new GunMachine();}
    if(threeKey && phase>=3) {myGun=new GunLazer();}
    
    x+=dx;
    y+=dy;
    myGun.recharge();
    
    checkCollisionsShip();
    
    if(hp==1) {
      if(frameCount % 40 == 0) {
        shipColor=danger;
      } else if(frameCount % 20 == 0) {
        shipColor=blue;
      }
    } else {
      shipColor=blue;
    }
  }
  
  void checkCollisionsShip() {
    int i=0;
    while(i<engine.size()) {
      GameObject thing = engine.get(i);
      if(thing instanceof BulletEnemy) {
        if(rectRect(x,y,w,h,thing.x,thing.y,thing.w,thing.h)) {
          hp-=1;
          thing.hp=0;
          if(hp<=0) {
            for(int j=0;j<10;j++) {
              engine.add(new Particle(x,y,10));
            }
          }
        }
      }
      i++;
    }
  }
  
  void shoot() {
    
  }
  
  boolean hasDied() {
    return hp<=0;
  }
}
