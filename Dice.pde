void setup()
{
  size(500,500);
  noLoop();
}
int x = 20;
int y = 20;
void draw()
{
for(y = 20; y < 480; y += 20) {
  for (x = 20; x < 480; x += 20)
    rect(x,y,20,20); 
}
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int mySize, sizeX, sizeY;
  sizeX = 20;
  sizeY = 20;
} 
  
  Die(int x, int y) //constructor
  {

  }
  void roll()
  {
    //your code here
  }
  void show()
  {
    //your code here
  }
}
