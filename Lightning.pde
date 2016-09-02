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
  background(0);
}

void draw()
{
  
  while (endX < 1280)
  {
  	randomX = (int)(Math.random()*25);
    randomY = (int)(Math.random()*36 - 18);
    stroke(255,255,(int)(Math.random()*255));
    endX = endX + randomX;
    endY = endY + randomY;
     if (randomY > 16){
      endY2 = endY;
      endX2 = endX;
	      while (randomY > 16){
		      endY2 = endY2 + (int)(Math.random()*36 - 18);
		      endX2 = endX2 + (int)(Math.random()*25);
		      startX2 = endX;
		      startY2 = endY;
		      line (startX2,startY2,endX2,endY2);
		      startY2 = endY2;
		      startX2 = endX2;
      if (endX2 > 1280){
      	randomY = 15;
      }
     }
    }
  	line (startX,startY,endX,endY);
  	startX = endX;
  	startY = endY;
  }
    }
void mousePressed()
{
  
  startX = 0;
  startY = 360;
  endX = 0;
  endY = 360;
}
