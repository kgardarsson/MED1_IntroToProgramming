int num=50;
SnakeBody[] object=new SnakeBody[num];
int i=0;

void setup() {
  size(600,600);
  noStroke();
  fill(255,152);
  for(int i=0;i<num;i++) {
    object[i]=new SnakeBody(mouseX,mouseY);
  }
}

void draw() {
  background(0);
  object[i]=new SnakeBody(mouseX,mouseY);
  i++;
  if(i % num == 0) {
    i=0;
  }
  for(int i=0;i<num;i++) {
    object[i].show();
  }
}
