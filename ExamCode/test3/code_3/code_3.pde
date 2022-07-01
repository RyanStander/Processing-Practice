// lastname / achternaam:stander
// firstname / voornaam:Ryan
// class / klas:M
// student number/nummer:477316


color black = color( 0, 0, 0 );
float xEgg, yEgg,xGrass,yGrass;
void setup() {
  size(600, 600);
}

void draw() {
  stroke( black );
  strokeWeight( 2 );

  // egg
  for (int g=0; g<4; g++) {
    for (int i=0; i<6; i++) {
      color eggColor = color( random(255), random(255), random(255) );
      fill( eggColor );
      ellipse( 50+xEgg, 100+yEgg, 50, 100 );
      xEgg=xEgg+100;
    }
    xEgg=0;
    yEgg=yEgg+150;
  }
  // blade of grass 
  for (int g=0; g<4; g++) {
    for (int i=0; i<60; i++) {
  color grassColor = color( 64, 253, 64 );
  fill( grassColor );
  triangle( 0+xGrass, 150+yGrass, 10+xGrass, 150+yGrass, 5+xGrass, 100+yGrass );
  xGrass=xGrass+10;
    }
    xGrass=0;
    yGrass=yGrass+150;
  }
  
  noLoop();
}
