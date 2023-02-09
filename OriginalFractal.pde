int c = 0;
int limit = 10;

public void setup()
{
  size (600, 600);
  rectMode(CENTER);
}
public void draw(){
  background(0);
  myFractal(mouseX,mouseY,480);
  //if (limit <= 0){limit = 10;}
}
public void keyPressed(){
  if (key == 'a'){limit = limit + 5;}
  //if (key == 'd'){limit = limit - 5;}
  if (key == 's'){limit = 5;}
}
public void myFractal(int x, int y, int siz){
  //noStroke();
  ellipse(x,y,siz,siz);
  fill(200,x+10,y+10);
  if (siz > limit){
    myFractal(x-siz/2,y,siz/2);
    myFractal(x+siz/2,y,siz/2);
    myFractal(x,y-siz/2,siz/3);
    myFractal(x,y+siz/2,siz/3);
    myFractal(x+siz/2,y-siz/2,siz/4);
    myFractal(x+siz/2,y+siz/2,siz/4);
    myFractal(x-siz/2,y-siz/2,siz/5);
    myFractal(x-siz/2,y+siz/2,siz/5);
  }
}
