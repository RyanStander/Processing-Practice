Circle[] c;
Rect[] r;
float xc=250;
float yc=250;
float xr=450;
float yr=600;

int rate = 40;

int rc= int(random(20, 100));
int rr= int(random(20, 100));
int i;

void setup() {
  frameRate(120);
  size(1500, 1000);
  c= new Circle[rate];
  r= new Rect[rate];
  for (i=0;i>rate;i++){
     c[i]=new Circle(random(100,width-100),random(100,height-100),int(random(20,100)));
     r[i]=new Rect(random(100,width-100),random(100,height-100),int(random(20,100)));
  }
  
}
//boolean circleRect(float cx, float cy, float radius, float rx, float ry, float rw, float rh) {


//  float testX = cx;
//  float testY = cy;

//  if (cx < rx)         testX = rx;      // test left edge
//  else if (cx > rx+rw) testX = rx+rw;   // right edge
//  if (cy < ry)         testY = ry;      // top edge
//  else if (cy > ry+rh) testY = ry+rh;   // bottom edge

//  float distX = cx-testX;
//  float distY = cy-testY;
//  float distance = sqrt( (distX*distX) + (distY*distY) );

//  if (distance <= radius) {
//    return true;
//  }
//  return false;
//}
void draw() {
  background(0);
  for (i = 0; i < rate; i++) {
    c[i].Ball();
    r[i].Sqr();
    //xc=c[i].getX();
    //yc=c[i].getY();
    //xr=r[i].getX();
    //yr=r[i].getY();
    

    //boolean hit = circleRect(xc, yc, rc, xr, yr, rr, rr);
    //if (hit) {
    //  c[i].setDir();
    //  r[i].setDir();
    //  fill(255, 150, 0);
    //} else {
    //  fill(0, 150, 255);
   // }
  }
}
