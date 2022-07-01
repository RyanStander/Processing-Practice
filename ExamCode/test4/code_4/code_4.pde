// lastname / achternaam:stander
// firstname / voornaam:ryan
// class / klas:m
// student number/nummer:477316

color black    = color( 0 );
color eggBrown = color( 253, 220, 180 );
color brown    = color(  64,  32,  32 );
color offWhite = color( 253, 253, 253 );
color white    = color( 253 );
void setup() {
   size(600,600);
   strokeWeight(2);
}

void draw() {
    background( offWhite );
    for (int i=0;i<6;i++){
    drawChocolate(random(100),random(100),random(400));
    }
    
    noLoop();
}
void drawChocolate(float x,float y, float size){
 stroke(black);
    strokeWeight(size / 100);
    for ( int i = 4 ; i >= 0 ; i-- ) {
        // row of eggs
        fill( eggBrown );
        for ( int j = 13 - i ; j >= 0; j-- ) {
            ellipse( x + j * size / 13 + i * size / 26, y + size / 2 - i * size / 12 , size / 10, size / 8 );
        }
       // basket
        fill( brown );
        for ( int j = 13-i ; j >= i ; j-- ) {
            arc( x + j * size / 13,  y + size / 2 + i * size / 12, size / 6, size / 6 , 0, PI, CHORD );
        }
    }
     
}
