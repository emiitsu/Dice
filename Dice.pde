void setup()
{
  size(500, 600);
  noLoop();
}

void draw()
{
  background(0);
  int total = 0;
  total = 0;
  for (int x = 10; x <= 510; x += 62)
    {
      for (int y = 10; y <= 485; y += 62)
      { 
        Die bob = new Die(y, x);
        bob.show();
        
        total += bob.roll;
      }
    }
    fill(255);
    text( "Total sum is: " + total, 225, 580);
}

void mousePressed()
{
  redraw();
}
class Die // single
{
  int myX, myY, roll, total;
  Die(int x, int y) // constructor
  {
    myX = x;
    myY = y;
    roll();
  }
  void roll()
  {
    roll = (int)(Math.random() * 6 + 1);
  }
  void show()
  {
    if (roll == 1)
    {fill ((int) (Math.random() * 155 + 100), (int) (Math.random() * 155 + 100), (int) (Math.random() * 155 + 100));
    rect(myX, myY, 50, 50, 10);
    fill(0);
    ellipse(25 + myX , 25 + myY, 8, 8);
    } else if (roll == 2)
    {
     fill ((int) (Math.random() * 155 + 100), (int) (Math.random() * 155 + 100), (int) (Math.random() * 155 + 100));
     rect(myX, myY, 50, 50, 10);
     fill(0);
     ellipse(35 + myX, 15 + myY, 8, 8);
     ellipse(15 + myX, 35 + myY, 8, 8);
    } else if (roll == 3)
    {
      fill((int) (Math.random() * 155 + 100), (int) (Math.random() * 155 + 100), (int) (Math.random() * 155 + 100));
      rect(myX, myY, 50, 50, 10);
      fill(0);
      ellipse(35 + myX, 15 + myY, 8, 8);
      ellipse(25 + myX, 25 + myY, 8, 8);
      ellipse(15 + myX, 35 + myY, 8, 8);
    } else if (roll == 4)
    {
       fill((int) (Math.random() * 155 + 100), (int) (Math.random() * 155 + 100), (int) (Math.random() * 155 + 100));
       rect(myX, myY, 50, 50, 10);
       fill(0);
       ellipse(35 + myX, 15 + myY, 8, 8);
       ellipse(15 + myX, 35 + myY, 8, 8);
       ellipse(15 + myX, 15 + myY, 8, 8);
       ellipse(35 + myX, 35 + myY, 8, 8);
    } else if (roll == 5)
  {
    fill((int) (Math.random() * 155 + 100), (int) (Math.random() * 155 + 100), (int) (Math.random() * 155 + 100));
       rect(myX, myY, 50, 50, 10);
       fill(0);
       ellipse(35 + myX, 15 + myY, 8, 8);
       ellipse(15 + myX, 35 + myY, 8, 8);
       ellipse(25 + myX, 25 + myY, 8, 8);
       ellipse(15 + myX, 15 + myY, 8, 8);
       ellipse(35 + myX, 35 + myY, 8, 8);
  } else {
     fill((int) (Math.random() * 155 + 100), (int) (Math.random() * 155 + 100), (int) (Math.random() * 155 + 100));
       rect(myX, myY, 50, 50, 10);
       fill(0);
       ellipse(15 + myX, 15 +myY, 8, 8);
       ellipse(15 + myX, 25 +myY, 8, 8);
       ellipse(15 + myX, 35 +myY, 8, 8);
       ellipse(35 + myX, 15 +myY, 8, 8);
       ellipse(35 + myX, 25 +myY, 8, 8);
       ellipse(35 + myX, 35 +myY, 8, 8);
  }
  }
}
