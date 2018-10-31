class Ship extends GameObject {
  
  Gun myGun;
  
  Ship() {
    x=width/2;
    y=height-25;
    dx=0;
    dy=0;
    w=50;
    h=50;
    hp=20;
    myGun=new GunPistol();
  }
  
  void show() {
    fill(shipColor);
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
    
    if(hp<=5) {
      if(frameCount % 40 == 0) {
        shipColor=danger;
      } else if(frameCount % 20 == 0) {
        shipColor=blue;
      }
    } else {
      shipColor=blue;
    }
  }
  
  void shoot() {
    
  }
  
  boolean hasDied() {
    return false;
  }
}
