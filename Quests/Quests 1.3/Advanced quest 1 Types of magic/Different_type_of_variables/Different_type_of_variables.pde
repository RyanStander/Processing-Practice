/* 
 Ryan Stander
 */
byte a, i, j;
boolean b;
char c;
color d;
double e;
float f;
int g;
long h;

void setup() {
  size(500, 500);
  background(233, 100, 30);
} 
void draw() {
  //color
  d=color(204, 153, 0);
  fill(d);
  //boolean 
  b = false; 
  if (!b) { 
    rect(30, 20, 50, 50);
  } 
  b = true; 
  if (b) { 
    line(20, 10, 90, 80); 
    line(20, 80, 90, 10); }
    //byte
    a = 23;
    i = -128;
    j=byte(a+i);
    //Char 
    c = 'A';
    //double
    e= 3.40282347E+38*2 ; 
    //float
    f=3.40282347E+38;
   //int
   g=2147483647 ;
   //long
   h=922337;
  }
