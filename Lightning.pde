int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;
void setup()
{
  strokeWeight(30);
  background(0);
  size(300,300);
}
void draw()
{
  endX = (int)(math.Random*9);
  startX = (int)(math.Random*9);
  startY = (int)(math.Random*18 - 9);
  endY = (int)(math.Random*18 - 9);
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

