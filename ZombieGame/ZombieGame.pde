color blue=#152FD1;
color red=#FF0000;
color orange=#AA781A;
color danger=#B7000C;
color shipColor=blue;
color purple=#8A00AA;
color yellow=#DED304;

ArrayList<GameObject> engine;
boolean aKey,dKey,spaceKey,oneKey,twoKey,threeKey;

Ship myShip;
EnemyBoss myEnemyBoss;

int phase=1;
int gunSelected;

PImage zombie;
PImage bossImg;
PImage fastZombie;
PImage beachBackground;
PImage PistolDisplay;
PImage MachineGunDisplay;
PImage LazerGunDisplay;

void setup() {
  size(1200,800,FX2D);
  engine = new ArrayList<GameObject>(10000);
  rectMode(CENTER);
  imageMode(CENTER);
  textAlign(CENTER);
  noStroke();
  myShip = new Ship();
  myEnemyBoss = new EnemyBoss();
  engine.add(myShip);
  engine.add(new Launcher());
  zombie=loadImage("slow_zombie.png");
  bossImg=loadImage("boss.png");
  fastZombie=loadImage("fast_zombie.png");
  beachBackground=loadImage("background.png");
  PistolDisplay=loadImage("PistolDisplay.png");
  MachineGunDisplay=loadImage("MachineGunDisplay.png");
  LazerGunDisplay=loadImage("LazerGunDisplay.png");
}

void draw() {
  int gunDisplayW=70;
  int gunDisplayH=70;
  int gunDisplayX=50;
  
  image(beachBackground,width/2,height/2,width,height);
  textSize(100);
  fill(0,155);
  if(phase==2 && frameCount<1600) {
    text("Press 2 for Machine Gun",width/2,height/1.5);
  } else if(phase==3 && frameCount<2900) {
    text("Press 3 for Lazer",width/2,height/1.5);
  }
  
  
  //Health Information
  rectMode(CORNER);
  textAlign(LEFT,TOP);
  fill(0);
  textSize(40);
  text("HP",22,10);
  text(myShip.hp,22,56);
  rectMode(CENTER);
  textAlign(CENTER);
  noFill();
  
  //Displays Which Gun Is Selected
  stroke(1);
  if(gunSelected==1) {
    rect(gunDisplayX,150,gunDisplayW,gunDisplayH);
  } else if(gunSelected==2) {
    rect(gunDisplayX,230,gunDisplayW,gunDisplayH);
  } else if(gunSelected==3) {
    rect(gunDisplayX,310,gunDisplayW,gunDisplayH);
  }
  noStroke();
  if(phase>=1) {image(PistolDisplay,gunDisplayX,150,gunDisplayW,gunDisplayH);}
  if(phase>=2) {image(MachineGunDisplay,gunDisplayX,230,gunDisplayW,gunDisplayH);}
  if(phase>=3) {image(LazerGunDisplay,gunDisplayX,310,gunDisplayW,gunDisplayH);}
  
  /*The Engine of the Game. Calls Upon Each Function of Every Game Object
    Functions Do the Following:
      Show the Object
      Allow the actions of objects, like moving
      Check if Object Is Dead */
  int i = engine.size()-1;
  while(i>=0) {
    GameObject obj = engine.get(i);
    obj.show();
    obj.act();
    if(obj.hasDied()) {
      engine.remove(i);
    }
    i--;
  }
}

//Controls
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
