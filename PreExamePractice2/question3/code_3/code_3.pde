//       lastname:Stander
//      firstname:Ryan
//          class:M
// student number:477316

size( 600, 600 );
background( 32, 191, 254 );

fill( 248, 248, 0 );
rect( 0, 550, width, 50 );

noFill();


int x = -100;
int y = 600;
int b=0;

// draws one strand of seaweed
for (int o=1; o<6; o=o+1) {
  for (int i = 0; i < 6; i = i+1) {
    x=x+100;
    float a = x + random( 2, 20 );
    stroke( random( 96, 191 ), 64, 32 );
    strokeWeight( random( 2, 10 ) );
    bezier( x, y, a, 550, a - random( 40 ), 550 - random( 20 ), x + random( -20, 20 ), random( 140, 500 ) );
  }
  y=y-5;
  b=b+20;
  x=-100+b;

}
