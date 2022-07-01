class Clouds {
  float xCloud;
  Clouds() {
    xCloud=0;
  }
  void cloud() {
    //cloud
    noStroke();
    fill(255);
    ellipse(xCloud+1850, 125, 1000, 150);
    ellipse(xCloud+1200, 200, 300, 75);
    ellipse(xCloud+1000, 125, 400, 120);
    ellipse(xCloud+700, 75, 150, 75);
    ellipse(xCloud+500, 75, 150, 75);
    ellipse(xCloud+420, 200, 100, 50);
    ellipse(xCloud+320, 125, 300, 80);
    ellipse(xCloud+167, 145, 400, 135);
    ellipse(xCloud, 100, 150, 50);
    ellipse(xCloud-100, 132, 100, 50);
  }
  void cloudMove() {
    if (xCloud<2350) {
      xCloud=xCloud+1;
    } else {
      xCloud=-2330;
    }
  }
}
