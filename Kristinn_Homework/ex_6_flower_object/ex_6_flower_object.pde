Flower myFlower1;
Flower myFlower2;
Flower myFlower3;


void setup()
{
  size(800,600);
  int inside=50;
  int flowerX=width-inside;
  int flower1Y=height/2;
  int flower2X=int(random(inside,width-inside));
  int flower2Y=3*height/4;
  int flower3X=int(random(inside,width-inside));
  int flower3Y=height/4;
  myFlower1=new Flower(random(30,90),int(random(5,7)),int(random(inside,width-inside)),flower1Y,#FFA000);
  myFlower2=new Flower(random(30,90),int(random(5,7)),int(random(inside,width-inside)),flower2Y,#FFB000);
  myFlower3=new Flower(random(30,90),int(random(5,7)),int(random(inside,width-inside)),flower3Y,#FFC000);

}

void draw()
{
  background(#80AF00);

  myFlower1.display();
  myFlower2.display();
  myFlower3.display();
  
  myFlower1.move();
  myFlower2.move();
  myFlower3.move();

  myFlower1.bounce();
  myFlower2.bounce();
  myFlower3.bounce();
}
