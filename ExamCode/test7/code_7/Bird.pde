
class Bird {
    float size;
    color bodyColor;
    boolean isPicking;
    int x = 0;
    int y = 0;
    
    public Bird( float newSize, color newBodyColor ) {
        bodyColor = newBodyColor;
        size = newSize;
    }
        

    void display(  ) {
        pushMatrix();
        translate( x, y );
        scale( size / 400.0, size / 400.0 );
        translate( -350, -520 );

        stroke(black);
        strokeWeight(4 * 400 / size);
       if ( isPicking ) {
            fill(yellow);
            //triangle(400, 150, 400, 198, 500, 198 );  // closed
            triangle(400, 400, 350, 400, 350, 500 );  // closed
            triangle(300, 400, 348, 400, 348, 500 );  // closed
        } else {
            fill(yellow);
            triangle(400, 150, 400, 198, 500, 198 );  // closed
            triangle(400, 202, 400, 250, 500, 202 );  // closed
        }
         fill(yellow);
        ellipse( 150, 250, 100, 100 );
        fill(white);
        ellipse( 200, 200, 100, 100 );
        fill(red);
        ellipse( 150, 300, 100, 100 );

        fill(bodyColor);
        ellipse(250, 300, 200, 200 );
        if ( isPicking ) {
            ellipse(350, 350, 150, 150);

            fill(black);
            ellipse(350, 350, 25, 25);
        } else {        
            ellipse(350, 200, 150, 150);

            fill(black);
            ellipse(350, 200, 25, 25);
        }

        line(225, 400, 225, 450);
        line(225, 450, 200, 500);
        line(225, 450, 250, 500);
        line(275, 400, 275, 450);
        line(275, 450, 250, 500);
        line(275, 450, 300, 500); 
        popMatrix();
    }
    
    
    void setPosition( int newX, int newY ) {
        x = newX;
        y = newY;
    }
    
    void setPicking( boolean isNowPicking ) {
        isPicking = isNowPicking;
    }
}
