void setup() {
  size(520, 520);
  int r = (int)(Math.random()*255)+200;
  int g = (int)(Math.random()*255)+200;
  int b = (int)(Math.random()*255)+200;
  int sum;
}

  void draw()
  {
    background (103, 58, 29);
    Die test = new Die();
    test.show();
    test.redraw();
  }

  void mousePressed()
  {
    redraw();
  }

  class Die
  {
    int numDots, myX, myY;
    Die(int x, int y)
    {
      numDots = 0;
      myX = x;
      myY = y;
      for (y = 20; y < 480; y += 30) {
        for (x = 20; x < 480; x += 30)
          rect(x, y, 30, 30);
      }
    }

    void roll() {
      numDots = (int)(Math.random()*6)+1;
      sum = sum + numDots;
    }
    void show()
    {
      fill(r, g, b);
      rect(x, y, 30, 30);
      if (numDots == 1) {
        ellipse(x, y, 3, 3);
      } else if (numDots == 2) {
        ellipse(x-5, y, 3, 3);
        ellipse(x+5, y, 3, 3); 
        } else if (numDots == 3) {
        ellipse(x, y + 5, 3, 3);
        ellipse(x - 3, y - 3, 3, 3);
        ellipse(x + 3, y + 3, 3, 3);
        } else if (numDots == 4) {
        ellipse(
        ellipse(
        ellipse(
        ellipse(
        } else if (numDots == 5) {
        ellipse(
        ellipse(
        ellipse(
        ellipse(
        ellipse(
        } else {
        ellipse(
        ellipse(
        ellipse(
        ellipse(
        ellipse(
        ellipse(
      }
    }
  }
