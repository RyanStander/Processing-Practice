//       lastname:stander
//      firstname:ryan
//          class:m
// student number:477316

color sand = color( 254, 227, 164 );



void setup() {
  size( 800, 600 );
  background( sand );
}

void draw() {
  noLoop();
  for (int i=0;i<6;i=i+1){
  figure(int(random(800)),int(random(600)),int(random(200,500)));
}
}

void figure(int x, int y, int size) {
  stroke( 0 );
  strokeWeight( 2 );
  fill( 104, 164, 164 );
  rect( x - size / 8, y, size / 4, size / 8 );
  for ( int angle = 180; angle < 360; angle += 15 ) {
    if ( angle % 30 == 0 ) {
      fill( 104, 164, 164 );
    } else {
      fill( 104, 164, 104 );
    }
    arc( x, y, size, size, radians( angle ), radians ( angle + 15 ), PIE );
  }
}
