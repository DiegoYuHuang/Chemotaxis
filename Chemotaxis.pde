Bacteria[] arr = new Bacteria[100];
void setup()
{
 size(700,700);
 for (int i =0; i<arr.length; i++)
 {
   arr[i] = new Bacteria();
 }
}

void draw()
{
  background(0);
  for (int i =0; i<arr.length; i++)
   {
     arr[i].walk();
     arr[i].show();
   }
}

class Bacteria
{
  int myX, myY, myColor;
  Bacteria()
  {
    myX = (int)(Math.random()*580) + 50;
    myY = (int)(Math.random()*580) + 50;
    myColor = color((int)(Math.random()*255) + 1,(int)(Math.random()*255)+1,(int)(Math.random()*255)+1);
  }
  void walk()
  {
    if ((mouseX > myX && mouseY < myY) && (dist(myX, myY, mouseX, mouseY) < 120)){
      //moves right and up
      myX = myX +(int)(Math.random()*7)-2;
      myY = myY +(int)(Math.random()*7)-4;
    }
    else if ((mouseX < myX && mouseY < myY) && (dist(myX, myY, mouseX, mouseY) < 120)){
      //moves left and up
      myX = myX +(int)(Math.random()*7)-4;
      myY = myY +(int)(Math.random()*7)-4;
    }
    else if ((mouseX > myX && mouseY > myY) && (dist(myX, myY, mouseX, mouseY) < 120)){
      //moves right and down
      myX = myX +(int)(Math.random()*7)-2;
      myY = myY +(int)(Math.random()*7)-2;
    }
    else if ((mouseX < myX && mouseY > myY) && (dist(myX, myY, mouseX, mouseY) < 120)){
      //moves left and down
      myX = myX +(int)(Math.random()*7)-4;
      myY = myY +(int)(Math.random()*7)-2;
    }
    //random walk
    myX = myX +(int)(Math.random()*7)-3;
    myY = myY +(int)(Math.random()*7)-3;
  }
  void show()
  {
    noStroke();
    fill(myColor);
    ellipse(myX,myY,30,30);
  }
}
