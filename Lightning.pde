int startX = 0;
int startY = 360;
int endX = 0;
int endY = 360;
//int pretty = (int)(Math.random()*255;
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
    stroke(255,255,(int)(Math.random()*255));
    endX = endX + (int)(Math.random()*25);
    endY = endY + (int)(Math.random()*36 - 18);
    if (endY > 16 || endY < -16)
    {
     
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
