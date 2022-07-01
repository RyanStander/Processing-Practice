/*
  Ryan Stander
*/
int xWall,xBall,yBall,ballSize;
int i;
void setup(){
size(500,500);
  wallpaper();
  balls();
  
}

void draw(){
  
  yBall=yBall+10;

  
}

void balls(){
  ballSize=20;
  fill(0,0,255); 
  for (yBall=25;yBall<height;yBall=yBall+50){   
     for (xBall=25;xBall<width;xBall=xBall+50){
      ellipse(xBall,yBall,ballSize,ballSize);
      ballSize=ballSize+2;
    }
    ballSize=20;
  } 
}
void wallpaper(){
 for (xWall=0;xWall<width;xWall=xWall+50){
    fill(255,0,0);
    rect(xWall,0,50,height);
    xWall=xWall+50;
    fill(0,255,0);
    rect(xWall,0,50,height);
 }
}
