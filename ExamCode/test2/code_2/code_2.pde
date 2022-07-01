// lastname / achternaam:
// firstname / voornaam:
// class / klas:
// student number/nummer:

color white = color(253);
color black = color(0);
color red = color(253,0,0);
color blue = color(0,0,253);
color yellow = color ( 253, 253, 0 );
color orange = color( 253, 128, 0 );
color offWhite = color( 253, 253, 253 );
boolean clicked=true;
boolean inc, dec;
int S=300;

void setup() {
   size(600,600);  
   rectMode(CENTER);
}

void draw() {
    background(offWhite);
    drawBird( 0, 0, clicked );
    
}
void keyPressed() {
 if (key == '=' || key == '+') {
   inc=true;
  }
  if (key == '-' || key == '_') {
    dec=true;
  }
}
void keyReleased(){
  if (key == '=' || key == '+') {
    inc=false;
  }
  if (key == '-' || key == '_') {
    inc=false;
  }
}
void mousePressed() {
  clicked=false;
  }
  void mouseReleased(){
  clicked=true; 
  }
        
void drawBird( float x, float y, boolean isBeakOpen ) {
    pushMatrix();
    translate( x + 600 , y );
    if (inc){
      S=S+1;
    }
    if (dec){
      S=S-1;
    }
    scale( -S / 400.0, S / 400.0 );
    translate( -100, -120 );
    
    stroke(black);
    strokeWeight(4);
    fill(orange);
    if ( isBeakOpen ) {
        triangle(400, 150, 400, 198, 500, 150 );  // open beak
        triangle(400, 202, 400, 250, 500, 250 );  // open beak
    } else {
        triangle(400, 150, 400, 198, 500, 198 );  // closed
        triangle(400, 202, 400, 250, 500, 202 );  // closed
    }
    ellipse( 150, 250, 100, 100 );
    fill(white);
    ellipse( 200, 200, 100, 100 );
    fill(red);
    ellipse( 150, 300, 100, 100 );
    if (mouseX>width/2){
     fill(blue); 
    }
    if (mouseX<width/2){
     fill(yellow); 
    }
    ellipse(250, 300, 200, 200 );
    ellipse(350, 200, 150, 150);
    
    fill(black);
    ellipse(350, 200, 25, 25);

    line(225, 400, 225, 450);
    line(225, 450, 200, 500);
    line(225, 450, 250, 500);
    line(275, 400, 275, 450);
    line(275, 450, 250, 500);
    line(275, 450, 300, 500); 
    popMatrix();
}
