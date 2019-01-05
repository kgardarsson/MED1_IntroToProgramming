// A Polar coordinate
float r = 75;
float theta = 0;
float n;
int value,oldLow;
int oldHigh=255;
int newLow=1000;
int newHigh=2000;
float bigger=0.0;

void setup() {
  size(displayWidth,displayHeight);
  background(255);
  smooth();
}

void draw() {
  for(int i=0;i<5;i++){
    value=int(random(0,255));
    // Polar to Cartesian conversion
    float x = r * theta/100 * cos(theta);
    float y = r * theta/100 * sin(theta);
    // Draw an ellipse at x,y
    noStroke();
    float m = map(value,oldLow,oldHigh,newLow,newHigh);
    n = noise(m) * bigger;
    bigger+=0.01;
    fill(0,0,value);
    ellipse(x+width/2, y+height/2, n, n); // Adjust for center of window
    // Increment the angle
    theta += 0.05;
    r+=0.05;
  }
}
