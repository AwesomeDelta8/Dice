Die Dice;
int sum;
void setup() {
  size(950, 1000);
  noLoop();
}
void draw() {
    background(#6973CB);
  for (int y = 25; y<=725; y+=100) {
    for (int x = 25; x<=825; x+=100) {
      Dice = new Die(x, y);
      Dice.roll();
      Dice.show();
    }
  }
  fill(0);
  textSize(40);
  text("Total: " + sum, 350, 900);
}
void mousePressed() {
  sum = 0;
  redraw();
}

class Die {
  int myRoll, myX, myY;
  float r, g, b;
  Die(int x, int y) {
    myX = x;
    myY = y;
  }

  void roll() {
    myRoll = (int)(Math.random() * 6+1);
    sum = sum + myRoll;
  }
  void show() {
    r = (float)(Math.random() * 67);
    g = (float)(Math.random() * 100+70);
    b = (float)(Math.random() * 67+67);
    fill(r, g, b);
    rect(myX, myY, 95, 95, 30);
    fill(#ED9248);
    if (myRoll == 1) {
      //roll 1
      ellipse(myX+47, myY+47, 10, 10);
    } else if (myRoll == 2) {
      //roll 2
      ellipse(myX + 27, myY +27, 10, 10);
      ellipse(myX + 67, myY +67, 10, 10);
    } else if (myRoll == 3) {
      //roll 3
      ellipse(myX+47, myY+47, 10, 10);
      ellipse(myX+27, myY+67, 10, 10);
      ellipse(myX+67, myY+27, 10, 10);
    } else if (myRoll == 4) {
      //roll 4
      ellipse(myX + 27, myY +27, 10, 10);
      ellipse(myX + 67, myY +67, 10, 10);
      ellipse(myX+27, myY+67, 10, 10);
      ellipse(myX+67, myY+27, 10, 10);
    } else if (myRoll == 5) {
      //roll 5
      ellipse(myX + 27, myY +27, 10, 10);
      ellipse(myX + 67, myY +67, 10, 10);
      ellipse(myX+47, myY+47, 10, 10);
      ellipse(myX+27, myY+67, 10, 10);
      ellipse(myX+67, myY+27, 10, 10);
    } else {
      //roll 6
      ellipse(myX + 27, myY +27, 10, 10);
      ellipse(myX + 47, myY +27, 10, 10);
      ellipse(myX + 67, myY +67, 10, 10);
      ellipse(myX+27, myY+67, 10, 10);
      ellipse(myX + 47, myY+67, 10, 10);
      ellipse(myX+67, myY+27, 10, 10);
    }
  }
}
