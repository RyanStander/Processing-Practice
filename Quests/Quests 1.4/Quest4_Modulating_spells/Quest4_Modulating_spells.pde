/* 
 Ryan Stander 447316
 */

int xHouse=250;
int yHouse=250;
int[] r= new int[10];
int[] x= new int[10];
int[] y= new int[10];
int i, a;
int col1, col2, col3;
color[] colour=new color[10];
Face face1, face2;
void setup() {
  size(750, 750);
  background(#B91AFF);
  makeHouse();
}
void draw() {
  noLoop();
  face1= new Face();
  for (i=0; i<10; i++) {
    colour[i]=color(random(255), random(255), random(255));
    x[i]=int(random(750));
    y[i]=int(random(750));
    face2=new Face(x[i], y[i], colour[i]);
  }
}
void makeHouse() {
  for (a=1; a<10; a=a+1) {
    fill(colour[1]);
    r[1]=(int)random(0, 750);
    xHouse=r[1];
    r[1]=(int)random(0, 750);
    yHouse=r[1];
    col1=(int)random(0, 255);
    col2=(int)random(0, 255);
    col3=(int)random(0, 255);
    colour[1]=color(col1, col2, col3);
    house();
  }
}



void house() {
  rect(xHouse, yHouse, 200, 200);
  triangle(xHouse+100, yHouse-150, xHouse, yHouse, xHouse+200, yHouse);
}
