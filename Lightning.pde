int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;

void setup()
{
  size(300,300);
  strokeWeight(20);
  background(0);
}
void draw()
{
  stroke((int)(math.Random*255));
  while (endX < 300)
  {
    endX = startX + (int)(math.Random*9);
    endY = startY + (int)(math.Random*18-9);
  	line(startX,startY,endX,endY);
  	startX = endX;
  	startY = endY;
  }

void mousePressed()
{
  int startX = 0;
  int startY = 150;
  int endX = 0;
  int endY = 150;
}
