color blue=#152FD1;
color red=#FF0000;
color orange=#AA781A;
color danger=#B7000C;
color shipColor=blue;
ArrayList<GameObject> engine;
boolean aKey,dKey,spaceKey,oneKey,twoKey,threeKey;
Ship myShip;

int phase=1;

PImage zombie;
PImage bossImg;
PImage fastZombie;
PImage beachBackground;

void setup() {
  size(1200,800,FX2D);
  engine = new ArrayList<GameObject>(10000);
  rectMode(CENTER);
  imageMode(CENTER);
  textAlign(CENTER);
  myShip = new Ship();
  engine.add(myShip);
  engine.add(new Launcher());
  zombie=loadImage("slow_zombie.png");
  bossImg=loadImage("boss.png");
  fastZombie=loadImage("fast_zombie.png");
  beachBackground=loadImage("background.png");
}

void draw() {
  image(beachBackground,width/2,height/2,width,height);
  textSize(100);
  fill(0,155);
  if(phase==2 && frameCount<1600) {
    text("Press 2 for Machine Gun",width/2,height/1.5);
  } else if(phase==3 && frameCount<2900) {
    text("Press 3 for Lazer",width/2,height/1.5);
  }
  
  int i = engine.size()-1;
  println(i);
  while(i>=0) {
    GameObject obj = engine.get(i);
    obj.show();
    obj.act();
    if(obj.hasDied()) {
      engine.remove(i);
    }
    i--;
  }
  if(frameCount % 2 == 0) {
    engine.add(new Star());
  }
}

void keyPressed() {
  if(key=='a'||key=='A'||keyCode==LEFT)  aKey=true;
  if(key=='d'||key=='D'||keyCode==RIGHT) dKey=true;
  if(key==' ')                           spaceKey=true;
  if(key=='1')                           oneKey=true;
  if(key=='2')                           twoKey=true;
  if(key=='3')                           threeKey=true;
}

void keyReleased() {
  if(key=='a'||key=='A'||keyCode==LEFT)  aKey=false;
  if(key=='d'||key=='D'||keyCode==RIGHT) dKey=false;
  if(key==' ')                           spaceKey=false;
  if(key=='1')                           oneKey=false;
  if(key=='2')                           twoKey=false;
  if(key=='3')                           threeKey=false;
}
