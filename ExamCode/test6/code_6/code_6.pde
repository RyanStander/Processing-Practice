// lastname / achternaam:
// firstname / voornaam:
// class / klas:
// student number/nummer:

color black    = color(   0 );
color white    = color( 255 );
color blue     = color(   0,   0, 253 );
color cyan     = color(   0, 253, 253 );

Droplet[] droplet;
WaterLevel waterLevel;

void setup(){
    size( 600, 600 );
    droplet=new Droplet[60];
    for (int i=0;i<60;i++){
    droplet[i] = new Droplet( random( 20, 600 - 20 ), random(height) , random( 6, 20 ) );
    }
    waterLevel = new WaterLevel( 10 );
}

void draw(){
    background( cyan );
    for (int i=0;i<60;i++){
    droplet[i].move();
    droplet[i].display();
    if ( droplet[i].getY() > waterLevel.getLevel()+height ) {
    waterLevel.changeLevel(1 );
    droplet[i].reset();
    }
    waterLevel.display();
    if ( waterLevel.getLevel() >= height ) {
        noLoop();
    }
  }
}

    
