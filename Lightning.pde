int startX = 0;
int startY = 360;
int endX = 0;
int endY = 360;

int startX2 = 0;
int startY2 = 0;
int endX2 = 0;
int endY2 = 0;

int randomX = 0;
int randomY = 0;
void setup()
{
  size(1280,720);
  strokeWeight(5);
}

void draw()
{
  utensil();
  pOutlet();
  //microwave();
  lightning();

}
void pOutlet()
{
  fill(220);
  rect(0, 260, 100, 100);
  fill(0);
  rect(20, 280, 10, 40);
  rect(70, 280, 10, 40);
  rect(40, 330, 20, 20);

}
void microwave()
{
  fill(230);
  rect(500, 290, 280, 140);
  fill(80);
  rect(520, 310, 200, 100);
  rect(730, 310, 20, 20);
  rect(750, 310, 20, 20);
  rect(730, 330, 20, 20);
  rect(750, 330, 20, 20);
  rect(730, 350, 20, 20);
  rect(750, 350, 20, 20);
  rect(730, 370, 20, 20);
  rect(750, 370, 20, 20);
}
void utensil()
{
  fill(0);
  rect(0, 0, 1280, 720);
  fill(230);
  noStroke();
  rect(50 - 2,mouseY,2,30); //tine1
  rect(50 - 6,mouseY,2,30); //tine2
  rect(50 + 2,mouseY,2,30); //tine3
  rect(50 + 6,mouseY,2,30); //tine4
  rect(50 - 6,mouseY + 30,14,15); //base of tines
  rect(50 - 2, mouseY + 45, 4, 60); //handle
    fill(0);
  rect(0,0,100,260);
}
void lightning()
{
    while (endX < 1280)
        {
          randomX = (int)(Math.random()*25);
          randomY = (int)(Math.random()*36 - 18);
          stroke((int)(Math.random()*255),245,255);
          endY2 = endY;
          endX2 = endX; 
          endX = endX + randomX;
          endY = endY + randomY;
          if (randomY > 16){
           startX2 = endX2;
           startY2 = endY2;
            while (randomY > 16){
              endY2 = endY2 + (int)(Math.random()*50 - 15);
              endX2 = endX2 + (int)(Math.random()*25);
              line (startX2,startY2,endX2,endY2);
              startY2 = endY2;
              startX2 = endX2;
              if (endX2 > 1280){
                randomY = 0;
              }
            }
           }
          if (randomY < -16){
           startX2 = endX;
           startY2 = endY;
            while (randomY < -16){
              endY2 = endY2 + (int)(Math.random()*50 - 35);
              endX2 = endX2 + (int)(Math.random()*25);
              line (startX2,startY2,endX2,endY2);
              startY2 = endY2;
              startX2 = endX2;
              if (endX2 > 1280){
                randomY = 0;
              }
            }
          
    line (startX,startY,endX,endY);
    startX = endX;
    startY = endY;
 }
}
}

  void mousePressed()
{
  if(mouseX >0 && mouseX<100 && mouseY>260 && mouseY<360){
  background(130);
  startX = 0;
  startY = 360;
  endX = 0;
  endY = 360;
  }
}


/*while (endX < 1280)
        {
          randomX = (int)(Math.random()*25);
          randomY = (int)(Math.random()*36 - 18);
          stroke(255,255,(int)(Math.random()*255));
          endX = endX + randomX;
          endY = endY + randomY;
          endY2 = endY;
          endX2 = endX; 
          startX2 = endX;
          startY2 = endY;
          if (randomY > 15){
            while (randomY > 15){
              endY2 = endY2 + (int)(Math.random()*36 - 18);
              endX2 = endX2 + (int)(Math.random()*25);
              line (startX2,startY2,endX2,endY2);
              startY2 = endY2;
              startX2 = endX2;
              if (endX2 > 1280){
                randomY = 0;
              }
            }
           }
          if (randomY < -15){
            while (randomY < -15){
              endY2 = endY2 + (int)(Math.random()*36 - 25);
              endX2 = endX2 + (int)(Math.random()*25);
              line (startX2,startY2,endX2,endY2);
              startY2 = endY2;
              startX2 = endX2;
              if (endX2 > 1280){
                randomY = 0;
                endX2 = 640;
                endY2 = 360;
                startX2 = 640;
                startY2 = 360;
              }
            }
          
    line (startX,startY,endX,endY);
    startX = endX;
    startY = endY;
 }
}*/

