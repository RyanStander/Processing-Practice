class Face { 
  int xFace, yFace; 
  Face (int x, int y, color z) {  
    xFace = x; 
    yFace = y; 
    fill(z);
    ellipse(xFace, yFace, 100, 100); 
    ellipse(xFace-20, yFace-10, 20, 20);
    ellipse(xFace+20, yFace-10, 20, 20);
    bezier(xFace-30, yFace+20, xFace, yFace+30, xFace, yFace+30, xFace+30, yFace+20);
  } 
  Face() {
  }
} 
