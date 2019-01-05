int num=100000;
int[] x = new int[num];
int[] y = new int[num];
int iPos=0;

void setup() {
  size(600,600);
  noStroke();
  fill(255,152);
}

void draw() {
  background(0);
  //checks every value in array 
  iPos+=1;
  if(iPos==num) {
    iPos=0;
  }
  for(int i=0;i<iPos;i++) {
    x[i] = x[i+1];
    y[i] = y[i+1];
  }
  x[iPos] = mouseX;
  y[iPos] = mouseY;
  for(int i=0;i<iPos+1;i++) {
    int pos=iPos+i;
    ellipse(x[i],y[i],20,20);
  }
  println(iPos);
}
