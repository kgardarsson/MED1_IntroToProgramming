abstract class Snake {
  
  int x,y,dx,dy,w,h,hp;
  
  Snake() {
    x=width/2;
    y=height/2;
    dx=5;
    dy=5;
    w=dx;
    h=dy;
  }
  
  void show() {
    rect(x,y,w,h);
  }
    
  void act() {
    
  }
  
  
}
