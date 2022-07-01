class Bunny {
  color black  = color(   0 );
  color white    = color( 253 );
  color blue     = color(   0, 0, 253 );
  color offWhite = color( 253, 253, 253 );
  color bunny    = color( 239, 224, 221 );
  color pink     = color( 253, 192, 217 );
  int dx;
  int dy;
  int size,x,y;
  Bunny(){}
  Bunny(int xTemp,int yTemp,int sizeTemp,int dTemp) {
    dx=dTemp;
    dy=-1*dTemp;
    x=xTemp;
    y=yTemp;
    size=sizeTemp;
  }
  void moveAndBounceOnEdges(){
    
    // move and bounce on edges
    x += dx;
    y += dy;
    if ( x < 0 || x > width - size / 1.6 ) {
      dx = -dx;
      x += dx;
    }
    if ( y < 0 || y > height - size ) {
      dy = -dy;
      y += dy;
    }
  }
    void drawBunny() {
      // display bunny head
      pushMatrix();
      translate( x, y );
      scale( size / 500.0 );
      translate( -100, 0 );

      stroke(black);
      strokeWeight(3);

      // body
      fill( bunny );
      ellipse( 250, 350, 300, 300 );
      ellipse( 150, 150, 100, 300 );
      ellipse( 350, 150, 100, 300 );

      // ears
      fill( pink );
      noStroke();
      ellipse( 150, 150, 80, 250 );
      ellipse( 350, 150, 80, 250 );

      // refill the body to remove the stroke lines
      fill( bunny );
      ellipse( 250, 350, 296, 296 );

      // teeth
      stroke( black );
      fill( white );
      rect( 225, 425, 25, 50 );
      rect( 250, 425, 25, 50 );

      // whiskers
      line( 150, 350, 350, 450 );
      line( 150, 400, 350, 400 );
      line( 150, 450, 350, 350 );

      // eyes
      arc( 200, 350, 50, 200, PI, TWO_PI, CHORD );
      arc( 300, 350, 50, 200, PI, TWO_PI, CHORD );

      fill( blue );
      ellipse( 200, 325, 50, 50 );
      ellipse( 300, 325, 50, 50 );

      popMatrix();
    }
}
  
  
