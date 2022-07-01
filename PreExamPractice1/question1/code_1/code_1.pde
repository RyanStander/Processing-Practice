//        surname:Stander
//      firstname:Ryan
//          class:M
// student number:477316
int xBubble_1=292;
int xBubble_2=325;
int xBubble_3=305;
int yBubble_1=30;
int yBubble_2=20;
int yBubble_3=10;
int speed=5;
color black = color(   0 );
color white = color( 254 );
color sand  = color( 254, 254, 227 );
color cyan  = color(   0, 254, 254 );
color blue  = color(   0, 127, 254 );
color brown = color( 127,  64,   0 );
void setup(){
  size( 600, 600 );
}

void draw(){



// sky
background( blue );  


// bubbles
fill( cyan );
stroke( 0, 191, 254 );
strokeWeight(2);
ellipse( xBubble_1, yBubble_1, 25, 25 );
ellipse( xBubble_2, yBubble_2, 20, 20 );
ellipse( xBubble_3, yBubble_3, 10, 10 );


//ground
noStroke();
fill( sand );
rect( 0, height - 50, width, 50 );


// small mount
fill( brown );
stroke( black );
quad( 200, height - 50, 250, height - 100, 400, height - 100, 450, height - 50 );

//bubble movement
if (yBubble_1<0){
  yBubble_1=height-30;
  yBubble_2=height-20;
  yBubble_3=height-10;
}
yBubble_1=yBubble_1-speed;
yBubble_2=yBubble_2-speed;
yBubble_3=yBubble_3-speed;
}
