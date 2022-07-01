// lastname / achternaam:Stander
// firstname / voornaam:Ryan
// class / klas:M
// student number/nummer:477316

color black   = color(   0 );
color cyan    = color(   0, 253, 253 );
color yellow  = color( 253, 253,   0 );
color green   = color(   0, 253,   0 );
int y=0;


void setup() {
    size( 600, 600 );
}


void draw() {
    background( cyan );
    noStroke();

    fill( green );
    rect( 0, 500, 600, 100 );
    
    stroke( black );
    strokeWeight( 3 );

    // stem
    rect( 225, 275, 50, 215 );

    // flower , make this movable
    fill( yellow );
    triangle( 250, 250+y, 150, 350+y, 350, 350+y );
    arc( 150, 350+y, 200, 200, PI + HALF_PI, TWO_PI, PIE );
    arc( 350, 350+y, 200, 200, PI, PI + HALF_PI, PIE );
    arc( 250, 350+y, 200, 200, 0, PI, PIE );

    // leaves, stays fixed
    fill( green );
    triangle(  50, 200, 150 ,500, 275, 500 );
    triangle( 450, 200, 225 ,500, 350, 500 );
    y=y-1;
    if (y==-175){
     y=0; 
    }
}
