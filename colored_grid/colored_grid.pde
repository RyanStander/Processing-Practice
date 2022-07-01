int r,b,g;
int xPos,yPos;
int i,a;
void setup(){
size(500,500);  
}
void draw(){
  for (a=0;a<20;a=a+1){
  for (i=0;i<20;i=i+1){
    Square();
    xPos=xPos+25;
  }
  yPos=yPos+25;
  xPos=0;
  }
  yPos=0;
}
void Square(){
  r=(int)random(25,225);
  b=(int)random(25,225);
  g=(int)random(25,225);
  fill(r,g,b);
  rect(xPos,yPos,25,25); 
}
