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
     (randomY > 16 || randomY < -16)
     {
       endX2 = endX;
       endY2 = endY;
       while (endX2 < 1280)
       {
       	 stroke(255,255,(int)(Math.random()*255));
       	 endX2 = endX2 + (int)(Math.random()*25);
         endY2 = endY2 + (int)(Math.random()*36 - 18);
         line (startX,startY,endX,endY);
  		 startX2 = endX2;
  	   	 startY2 = endY2;
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
