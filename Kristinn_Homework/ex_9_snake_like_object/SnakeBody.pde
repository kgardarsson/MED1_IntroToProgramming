class SnakeBody{
  
  float x;
  float y;
  float w=20;
  float h=20;
  float shrink=0.3;
  
  SnakeBody(float _x,float _y) {
    x=_x;
    y=_y;
  }
  
  void show() {
    for(int i=0;i<num;i++) {
      if(w>0){
        fill(255);
        ellipse(x,y,w,h);
        fill(255,0,0);
        ellipse(x-6,y-4,w/2,h/2);
        fill(0,255,0);
        ellipse(x+6,y-4,w/2,h/2);
        fill(0,0,255);
        ellipse(x,y+8,w/2,h/2);
      }
    }
    w-=shrink;
    h=w;
    if(w<=0) {
      w=20;
      h=20;
    }
  }
}
