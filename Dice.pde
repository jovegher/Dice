void setup() {
  size(520, 520);
  int x = 20;
  int y = 20;
}

void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int mySize, myX, myY;
  Die(int x, int y)
  {
    chungus = 0;
    myX = x;
    myY = y;
    for (y = 20; y < 480; y += 30) {
      for (x = 20; x < 480; x += 30)
        rect(x, y, 30, 30);
    } 
    Die test;
    test = new Die(20, 20);
    System.out.println(Die.myX);
    noLoop();
    Die.roll();
    Die.show();
    int r = Math.random(200, 255);
    int g = Math.random(200, 255);
    int b = Math.random(200, 255);
  }
  {
  }
  void draw()
  {
    background (103, 58, 29);
  }

  void roll() {
    int displayNum = (int)Math.random(1, 6);
    if (displayNum == 1) {
      text("I", x, y);
    } else if (displayNum == 2) {
      text("II", x, y);
    } else if (displayNum == 3) {
      text("III", x, y);
    } else if (displayNum == 4) {
      text("IV", x, y);
    } else if (displayNum == 5) {
      text("V", x, y);
    } else {
      text("VI", x, y);
    }
    void show()
    {
      fill(r, g, b);
      rect(x, y, 30, 30);
    }
  }
