class Particle extends GameObject {
  
  Particle(float incomingX,float incomingY) {
    x=incomingX;
    y=incomingY;
    dx=random(-5,5);
    dy=random(-5,5);
    w=random(5,10);
    h=w;
    hp=random(100,255);
  }
  
  void show() {
    fill(red,hp);
    ellipse(x,y,w,h);
  }
  
  void act() {
    x+=dx;
    y+=dy;
    hp-=10;
  }
  
  boolean hasDied() {
    return hp<=0;
  }
}
