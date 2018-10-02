int startX = 150;
int startY = 0;
int endX;
int endY;
int finishY;

void setup()
{
  size(300,300);
  backdrop();
}
void draw()
{
  //lightningA();
  lightningB();
}

void lightningA()
{
  while(endY<300)
  {
     strokeWeight(2);
     stroke((int)(Math.random()*275), (int)(Math.random()*275), (int)(Math.random()*275), (int)(Math.random()*275));
     endX = startX + (int)(Math.random()*9)+1;
     endY = startY = (int)(Math.random()*19)-9;
     line(startX, startY, endX, endY);
     startX=endX;
     startY=endY;
  }
}

void lightningB()
{
  strokeWeight(2);
  stroke((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  while(endY<300)
  {
    endX = startX + (int)(Math.random()*19)-9;
    endY = startY + (int)(Math.random()*9)+1;
    line(startX, startY, endX, endY);
    startX=endX;
    startY=endY;
  }
}
void mousePressed()
{
  startX = 150;
  startY = 0;
  endX = 150;
  endY = 0;
  redraw();

}

void backdrop()
{
    background(37, 55, 152);
    fill(224, 217, 217);
    noStroke();
    //cloud one
    ellipse(25, 28, 40, 35);
    ellipse(45, 28, 35, 38);
    ellipse(70, 28, 40, 35);
    ellipse(90, 28, 35, 36);
    //cloud two
    ellipse(145, 30, 40, 35);
    ellipse(165, 30, 35, 38);
    ellipse(190, 30, 40, 35);
    ellipse(210, 30, 35, 36);
    //cloud three
    ellipse(265, 25, 40, 35);
    ellipse(285, 25, 35, 38);
    ellipse(310, 25, 40, 35);
    //grass
    fill(38, 129, 0);
    noStroke();
    rect(0, 285, 300, 15);
}
