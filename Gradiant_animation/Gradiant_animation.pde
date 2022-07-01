void setup(){
    size(1000,1000);
}
void draw(){
 int i=0;
 
 while (i<width+50) {
   noStroke();
   float distance=abs(mouseX-i);
   fill(distance);   
   rect(i,0,1000,height);
   i+=10;
 }
}
