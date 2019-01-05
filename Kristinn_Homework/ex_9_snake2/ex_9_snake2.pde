int num=100000;
int[] x = new int[num];
int[] y = new int[num];
int i=0;

void setup() {
  size(600,600);
  noStroke();
  fill(255,152);
}

void draw() {
  background(0);
  //checks every value in array 

  x[i] = mouseX;
  y[i] = mouseY;
  
  i++;
  if(i % num == 0) {
    i=0;
  }
  for(int i=0;i<i+1;i++) {
    int pos=i+i;
    ellipse(x[i],y[i],20,20);
  }
  println(i);
}
