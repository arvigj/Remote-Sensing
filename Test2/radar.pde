class Radar{
  float[] start = {0,0};
  float[] end = {0,0};
  float degree = random(TWO_PI);
  
  Radar(float x, float y) {
    start[0] = x;
    start[1] = y;
    
    end[0] = 50 * cos(degree);
    end[1] = 50 * sin(degree);
  }
  
  void refresh() {
    /*stroke(64, 164, 223);
    strokeWeight(5);
    line(start[0],start[1],start[0]+end[0],start[1]+end[1]);
    endShape();*/
    
    
    degree += PI/180. * 2.;
    if (degree == TWO_PI) {
      degree = 0;
    }
    
    end[0] = 150 * sin(degree);
    end[1] = 150 * cos(degree);
    
    stroke(0,255,0);
    strokeWeight(5);
    line(start[0],start[1],start[0]+end[0],start[1]+end[1]);
    endShape();
  }
}

