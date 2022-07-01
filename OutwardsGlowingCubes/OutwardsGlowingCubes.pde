int x;
void setup(){
 size(200,200);
 x=0;
}

void draw(){
  
loadScreen();  
  x=x+1;
  if(x>255){
    x=-150;
}
}
void loadScreen(){
  noStroke();
  fill(x,0,0);
  rect(0,0,200,200);
  fill(x+50,0,0);
  rect(25,25,150,150);
  fill(x+100,0,0);
  rect(50,50,100,100);
  fill(x+150,0,0);
  rect(75,75,50,50); 
}
  
