// lastname / achternaam:
// firstname / voornaam:
// class / klas:
// student number/nummer:

color white  = color( 253 );
color black  = color(   0 );
color red    = color( 253 ,   0 ,   0 );
color blue   = color(   0 ,   0 , 253);
color green  = color(   0 , 253 ,   0 );
color yellow = color( 253 , 253 ,   0 );
color orange = color( 253 , 128 ,   0 );
color offWhite = color( 253, 253, 253 );


int score = 0;
int startValue = 60;
int timer = startValue;


Bird bird;
Worm worm;

void setup() {
   size(1000,600);
}


void draw() {
    background(offWhite);
    
    fill( green );
    
    stroke( black );
    strokeWeight( 4 );
    rect( -5, 200, width + 15, height - 200 );
}
