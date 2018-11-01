class Flower
{
  //variables
  
  float r;
  int n;
  float x;
  float y;
  int c;
  
  int xSpeed=int(random(-5,5));
  int ySpeed=int(random(-5,5));

  
  Flower(float temp_r,int temp_n,float temp_x,float temp_y,int temp_c)
  {
    r=temp_r;
    n=temp_n;
    x=temp_x;
    y=temp_y;
    c=temp_c;
  }
  
  void display()
  {
    float petalX;
    float petalY;
    
    fill(c);
    for (float i=0; i<PI*2; i+=2*PI/n)
    {
      petalX=x + r*cos(i);
      petalY=y + r*sin(i);
      ellipse(petalX, petalY, r, r);
    }
  
    //center of flower
    fill(200, 0, 0);
    ellipse(x, y, r*1.2, r*1.2);
  }
  
  void move()
  {
    x+=xSpeed;
    y+=ySpeed;
  }
  
  void bounce()
  {
    if(xSpeed==0)
    {
      xSpeed=int(random(-5,5));
    }
    if(ySpeed==0)
    {
      ySpeed=int(random(-5,5));
    }
    if(x>width-r*1.2)
    {
      xSpeed=-xSpeed;
    }
    if(x<r*1.2)
    {
      xSpeed=-xSpeed;
    }
    if(y>height-r*1.2)
    {
      ySpeed=-ySpeed;
    }
    if(y<r*1.2)
    {
      ySpeed=-ySpeed;
    }
  }
}
