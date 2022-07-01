//        surname:Stander
//      firstname:Ryan
//          class:M
// student number:477316

color black  = color(   0 );
color white  = color( 254 );
color navy   = color(  32,  64, 191 );
color cyan   = color( 156, 254, 254 );
color yellow = color( 248, 248,   0 );
color orange = color( 254, 127,  64 );
color brown  = color( 127,  64,  32 );

int seaLevel=0;
int x = 450;
int clawAngle = 45;


void setup() {
    size( 800, 600 );
}


void draw() {
    background( navy );
    fill( cyan );
    noStroke();
      
    seaLevel=(int)map(mouseX,0, width, 50, 250);
    rect( 0, 0, width,seaLevel ); // the sky/sea level


    // the sea bottom
    fill( yellow );
    noStroke();
    rect( 0, 550, width, 50 );


    x = constrain( x, 150, width - 150 );


    // draw crab 
    fill( orange );
    stroke( brown );


    // draw crab legs
    strokeWeight( 16 );
    line( x, 500, x - 75, 580 );
    line( x - 50 , 500, x - 125, 580 );
    line( x, 500, x + 75, 580 );
    line( x + 50 , 500, x + 125, 580 );


    // draw crab body
    strokeWeight( 8 );
    ellipse( x, 500, 210, 160 );


    // draw crab arms
    ellipse( x-70, 430, 40, 40 );
    ellipse( x-90, 410, 40, 40 );
    ellipse( x-100, 385, 40, 40 );

    ellipse( x+70, 430, 40, 40 );
    ellipse( x+90, 410, 40, 40 );
    ellipse( x+100, 385, 40, 40 );


    // draw crab claws
    arc( x+100, 340, 80, 80, radians( clawAngle - 90 ), radians( 270 - clawAngle ), PIE );
    arc( x-100, 340, 80, 80, radians( clawAngle - 90 ), radians( 270 - clawAngle ), PIE );


    // crab eyes
    fill( black );
    strokeWeight( 8 );
    ellipse( x-25, 400, 30, 60 );
    ellipse( x+25, 400, 30, 60 );
    //claw close
    if (mousePressed == true) {
    clawAngle=10;
    }else{
     clawAngle=45; 
    }
}
void keyPressed(){

  if (key=='j'){
    x=x-10;
  }
  if (key=='i'){
    x=x+10;
  }
}
