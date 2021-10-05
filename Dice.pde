float sum;
int x;
int y;
int rollNum = 1;

void setup() {
  background (255, 120,130);
  noLoop();
  size(500, 520);
}

void draw()
{
  float sum = 0;
  for (y = 30; y < 480; y += 30) {
    for (x = 30; x < 480; x += 30) {
      Die test = new Die(x,y);
      test.show();
      sum += test.numDots;
    }
  }
  fill(255);
  rect(-10,485, 520,50); 
  fill(0);
  textSize(16);
  text("Total sum of rolls: " + sum, 10, 510);
  textSize(12);
  text("Average sum per die: " + sum / 225, 270, 500);
  text("Total rolls: " + rollNum, 270, 515);
  
}

void mousePressed()
{
  
  redraw();
  rollNum = rollNum + 1;
}

class Die
{
  int numDots, myX, myY;
  
  public Die(int x, int y) {
    numDots = 0;
    myX = x;
    myY = y;

    roll();
  }
  void roll()
  {
    numDots = (int)(Math.random()*6)+1;
    sum = sum + numDots;
  }
  void show()
  {
    fill(255);  
    rect(myX, myY, 28, 28);
    
    fill(0);

    if (numDots == 1) {
      //middle
      ellipse(myX + 14, myY + 14, 3, 3);
      
    } else if (numDots == 2) {
      //left
      ellipse(myX + 10, myY + 14, 3, 3);
      //right
      ellipse(myX + 18, myY + 14, 3, 3);
      
    } else if (numDots == 3) {
      //middle
      ellipse(myX + 14, myY + 12, 3, 3);
        //left
        ellipse(myX + 10, myY + 16, 3, 3);
        //right
        ellipse(myX + 18, myY + 16, 3, 3);
      
    } else if (numDots == 4) {
      //upper left
      ellipse(myX+10, myY + 10, 3, 3);
      //upper right
      ellipse(myX+18, myY + 10, 3, 3);
        //lower left
        ellipse(myX+10, myY + 18, 3, 3);
        //lower right
        ellipse(myX+18, myY + 18, 3, 3);
        
    } else if (numDots == 5) {
      //middle
      ellipse(myX + 14, myY + 14, 3, 3);
        //upper left
        ellipse(myX+10, myY + 10, 3, 3);
        //upper right
        ellipse(myX+18, myY + 10, 3, 3);
          //lower left
          ellipse(myX+10, myY + 18, 3, 3);
          //lower right
          ellipse(myX+18, myY + 18, 3, 3);
            
    } else {
      //upper left
      ellipse(myX+10, myY + 8, 3, 3);
      //upper right
      ellipse(myX+18, myY + 8, 3, 3);
        //middle left
        ellipse(myX + 10, myY + 14, 3, 3);
        //middle right
        ellipse(myX + 18, myY + 14, 3, 3);
          //lower left
          ellipse(myX + 10, myY + 20, 3, 3);
          //lower right
          ellipse(myX + 18, myY + 20, 3, 3);
    }
  }
}
