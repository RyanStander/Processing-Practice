/*  Hamster ball roll
    by Ryan Stander
*/    
void setup(){
  size(1000,1000);
  background(255,255,0);
}
void draw(){
  noStroke();
  //base face and outer ear
  fill(255, 221, 126);
  bezier(375,500,450,530,550,530,625,500);//chin
  bezier(625,500,725,450,675,325,600,250);//right cheek   
  bezier(375,500,275,450,325,325,400,250);//left cheek
  bezier(400,250,450,200,550,200,600,250);//head top 
  quad(375,500,625,500, 600,250 ,400,250 );//inside
  bezier(350,310,50,200,370,100,400,250);//outer ear left
  bezier(650,310,950,200,630,100,600,250);//outer ear right
  
  //White area face
  fill(255);
  bezier(425,515,385,505,350,425,425,385);//left cheek
  bezier(575,515,615,505,650,425,575,385);//right cheek
  bezier(425,515,425,525,575,525,575,515);//bottom chin
  quad(425,385,575,385,575,515,425,515);//inside middle
  bezier(425,385,465,360,535,360,575,385);//top white mouth
  bezier(450,220,475,300,525,300,550,220);//forehead-bottom
  bezier(450,220,475,210,525,210,550,220);//forehead-top
  strokeWeight(20);
  stroke(255);
  line(425,385,370,340);//left eyebrow bottom
  line(460,380,420,320);//left eyebrow top
  line(370,340,405,340);//left eyebrow middle 1
  line(420,320,405,340);//left eyebrow middle 2
  line(425,385,405,340);//left fill 1
  line(460,380,405,340);//left fill 2
  
  noStroke();
  
  //eyes
  fill(128,90,70);
  ellipseMode(CENTER);
  ellipse(425,385,50,50);
  ellipse(575,385,50,50);
  
  //whiskers and mouth
  noFill();
  stroke(128,90,70);
  strokeWeight(11);
  line(650,385,715,375);//top right
  line(650,425,715,435);//middle right
  line(640,460,685,500);//bottom right
  line(350,385,285,375);//top left
  line(350,425,285,435);//middle left
  line(360,460,310,500);//bottom left
  bezier(500, 460, 500, 460, 480, 490, 460, 460);//mouth left
  bezier(500, 460, 500, 460, 520, 490, 540, 460);//mouth right
  bezier(480, 475, 490, 500, 510, 500, 520, 475);//tooth
  noStroke();
  
  //nose and ears
  fill(255,127,127);
  ellipse(500,440,60,30);
  bezier(470,440,480,470,520,470,530,440);
  bezier(350,310,160,240,300,100,385,270);//left inner ear
  bezier(650,310,840,240,700,100,615,270);//right inner ear
  
  //ear fluffs
  fill(255, 221, 126);
  bezier(375,310,350,250,350,240,385,270);//ear fluff left 1
  bezier(375,289,380,270,270,240,360,310);//ear fluff left 2
  bezier(625,310,650,250,650,240,615,270);//ear fluff right 1
  bezier(625,289,620,270,730,240,640,310);//ear fluff right 2
  
  
}
