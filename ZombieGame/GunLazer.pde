class GunLazer extends Gun {
    
  GunLazer() {
    gunSelected=3;
    threshold=1;
    cooldown=0;
  }
  
  void shoot() {
    if(myShip.dx==0) {
      engine.add(new Bullet());
      cooldown=0;
    }
  }
  
}
