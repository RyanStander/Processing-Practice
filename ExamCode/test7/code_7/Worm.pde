


class Worm {
    float size;
    color bodyColor;
    boolean isPicking;
    float x = 0;
    float y = 0;


    public Worm( float newX, float newY, float newSize, color newBodyColor ) {
        x = newX;
        y = newY;
        bodyColor = newBodyColor;
        size = newSize;
    }


    void display(  ) {
        pushMatrix();
        translate( x, y );
        scale( size / 120.0, size / 120.0 );

        stroke( black );
        strokeWeight( 200.0 / size );
        fill( bodyColor );


        beginShape();

        vertex( -65,    0 );
        vertex( -70,    5 );
        vertex( -70,   15 );
        vertex( -65,   20 );
        vertex( -30,   20 );
        vertex( -10,    0 );
        vertex(  0,    0 );
        vertex(  20,   20 );
        vertex(  55,   20 );
        vertex(  60,   15 );
        vertex(  60,    5 );
        vertex(  55 ,   0 );
        vertex(  30,    0 );
        vertex(  10,  -20 );
        vertex( -20,  -20 );
        vertex( -40,    0 );
        vertex( -65,    0 );

        endShape();

        noStroke();
        fill( black );
        ellipse( 50, 10, 5 * size / 50 , 5 * size / 50 );

        popMatrix();
    }


    boolean isInside( int pointX, int pointY ) {
        return    isPointInRectangle( pointX, pointY, x - size / 1.7, y,            size / 2.25, size / 6 )
               || isPointInRectangle( pointX, pointY, x - size / 3.8, y - size / 6, size / 2.25, size / 6 )
               || isPointInRectangle( pointX, pointY, x + size /  15, y,            size / 2.25, size / 6 );
    }
}    
