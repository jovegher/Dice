void setup() {
  size(520, 520);
  int r = Math.random(200, 255);
  int g = Math.random(200, 255);
  int b = Math.random(200, 255);
}

  void draw()
  {
    background (103, 58, 29);
    Die test = new Die();
    test.show();
  }

void mousePressed()
{
  redraw();
}

class Die //models one single dice cube
{
  int dots, myX, myY;
  Die(int x, int y)
  {
    dots = (int)(Math.random()*6)+1;
    myX = 30;
    myY = 30;
    for (y = 20; y < 480; y += 30) {
      for (x = 20; x < 480; x += 30)
        rect(x, y, myX, myY);
    } 
  }

  void roll() {
    if (dots == 1) {
     ellipse(x, y, 3, 3);
    } else if (displayNum == 2) {
      ellipse(x-5, y-5, 3, 3);
      ellipse(x+5, y+5, 3, 3);  
    } else if (displayNum == 3) {
      
    } else if (displayNum == 4) {
      
    } else if (displayNum == 5) {
      
    } else {
      
    }
    void show()
    {
      fill(r, g, b);
      rect(x, y, 30, 30);
    }
  }
