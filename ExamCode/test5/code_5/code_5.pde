// lastname / achternaam:stander
// firstname / voornaam:ryan
// class / klas:m
// student number/nummer:477316
Bunny b1,b2,b3;
  color blue     = color(   0, 0, 253 );
  color offWhite = color( 253, 253, 253 );
  color bunny    = color( 239, 224, 221 );
  color pink     = color( 253, 192, 217 );


void setup() {
    size( 600, 600 );
    b1=new Bunny(int(random(100)),int(random(100)),int(random(500)),int(random(1,5)));
    b2=new Bunny(int(random(100)),int(random(100)),int(random(500)),int(random(1,5)));
    b3=new Bunny(int(random(100)),int(random(100)),int(random(500)),int(random(1,5)));
    
}


void draw() {
    background( offWhite );
    b1.moveAndBounceOnEdges();
    b1.drawBunny();
    b2.moveAndBounceOnEdges();
    b2.drawBunny();
    b3.moveAndBounceOnEdges();
    b3.drawBunny();
   
    
    
    
}
