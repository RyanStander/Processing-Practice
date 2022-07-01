//declare global variables
int x=0;
int speed=2;

void setup(){
  size(200,200);
  smooth();
}
void draw(){
  background(255);
  Move();
  bounce();
  Ball(); 

}

void Move(){
    //change x by speed
  x=x+speed;
}
void bounce(){
   //if we reach an edge then reverse the speed.
  if ((x>width)||(x<0)){
      speed=speed*-1;
  }
}
void Ball(){
  //display circle at x location
  stroke(0,0,255);
  fill(255,0,0);
  ellipse(x,100,32,32);
  }
