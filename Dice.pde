int numd;

void setup() {
  size(500, 500);
  noLoop();
}

void draw() {
  background(255, 60, 120);
  for (int y = 15; y <= 400; y += 35) { 
    for (int x = 25; x <= 450; x += 35) { 
      Die dice = new Die(x, y);
      dice.show();
      dice.roll();
    }
  }
  fill(0,255,255);
  textSize(40);
  text("Total: " + numd, 170, 470);
}

void mousePressed() {
  numd = 0;
  redraw();
}

class Die {
  int myX, myY;

  Die(int x, int y) { // Constructor
    myX = x;
    myY = y;
  }

  void roll() {
    fill(0);
    int d = (int)(Math.random() * 6 + 1);
    
    if (d == 1) {
      ellipse(myX + 15, myY + 15, 5, 5); 
      numd += 1;
    } else if (d == 2) {
      ellipse(myX + 10, myY + 10, 5, 5);
      ellipse(myX + 20, myY + 20, 5, 5);
      numd += 2;
    } else if (d == 3) {
      ellipse(myX + 10, myY + 10, 5, 5);
      ellipse(myX + 15, myY + 15, 5, 5);
      ellipse(myX + 20, myY + 20, 5, 5);
      numd += 3;
    } else if (d == 4) {
      ellipse(myX + 10, myY + 10, 5, 5);
      ellipse(myX + 10, myY + 20, 5, 5);
      ellipse(myX + 20, myY + 10, 5, 5);
      ellipse(myX + 20, myY + 20, 5, 5);
      numd += 4;
    } else if (d == 5) {
      ellipse(myX + 10, myY + 10, 5, 5);
      ellipse(myX + 10, myY + 20, 5, 5);
      ellipse(myX + 20, myY + 10, 5, 5);
      ellipse(myX + 20, myY + 20, 5, 5);
      ellipse(myX + 15, myY + 15, 5, 5);
      numd += 5;
    } else if (d == 6) {
      ellipse(myX + 10, myY + 10, 5, 5);
      ellipse(myX + 10, myY + 20, 5, 5);
      ellipse(myX + 20, myY + 10, 5, 5);
      ellipse(myX + 20, myY + 20, 5, 5);
      ellipse(myX + 15, myY + 10, 5, 5);
      ellipse(myX + 15, myY + 20, 5, 5);
      numd += 6;
    }
  }

  void show() {
    fill(255,255,255);
    rect(myX, myY, 30, 30, 10); 
  }
}
