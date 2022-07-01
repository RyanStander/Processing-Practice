float x=0;
void setup(){
   size(200,200);
}
void draw(){
  background(255);
  fusciaBox();
  Increment();
}
void fusciaBox(){
    fill(250,18,227);
  rectMode(CENTER);
  rect(x,100,50,50);
}
void Increment(){
    //Increment x
  x=x+1;
  if(x>100){
    x=100;
  }
}
