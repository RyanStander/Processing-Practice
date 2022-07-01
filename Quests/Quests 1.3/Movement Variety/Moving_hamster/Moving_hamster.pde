/*  Hamster ball roll
 by Ryan Stander
 */
boolean ballState, moveRight, moveLeft;
Hamster ham=new Hamster();
Clouds clds=new Clouds();
void setup() {
  size(2250, 1000, P2D);
  background(255, 255, 0); 
  ballState=true;//if true=walking if false=rolling
  smooth(8);
  frameRate(120);
} //end of setup

void draw() {
  background(255, 255, 0);        
  //road
  fill(200);
  rect(0, 950, width, height);
  stroke(255);
  strokeWeight(10);
  line(0, 950, width, 950);  
  //road end
  ballChange();
  clds.cloud();
  clds.cloudMove();
  if(moveRight) {
            ham.moveRight();
        }
  if(moveLeft) {
            ham.moveLeft();
        }
}//end of draw
void keyPressed() {

  if (key=='D'||key=='d') {
 moveRight=true;
 }
  if (key =='A'||key=='a') {
    moveLeft=true;
  }
  if (key=='1') {
    ballState=true;
  }
  if (key=='2') {
    ballState=false;
  }
}
void keyReleased(){
 if (key=='D'||key=='d') {
 moveRight=false;
 }
 if (key=='A'||key=='a') {
 moveLeft=false;
 }
}




void ballChange() {
  pushMatrix();
  scale(0.8);
  if (ballState==true) {
    ham.openBall();
    ham.setY(100);
  } else if (ballState==false) {
    ham.closeBall();
    if (ham.getY()<185) {
      ham.dropDown();
    }
  } 
  popMatrix();
}
