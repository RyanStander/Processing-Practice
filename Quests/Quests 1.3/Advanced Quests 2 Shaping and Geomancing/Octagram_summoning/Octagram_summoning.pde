PShape octagram;

void setup(){
size(500,500);
octagram=createShape();
octagram.beginShape();
octagram.vertex(8,-16);//1
octagram.vertex(8,16);//4
octagram.vertex(16,8);//7
octagram.vertex(16,-8);//2
octagram.vertex(-8,16);//5
octagram.vertex(-8,-16);//8
octagram.vertex(16,8);//3
octagram.vertex(-16,8);//6
octagram.endShape(CLOSE);
}
void draw(){
 shape(octagram);
}
