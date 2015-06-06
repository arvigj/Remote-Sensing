class Point{
  float _x, _y;
  float _x2, _y2;
  float velx, vely;
  int[] _col = {0,0,0};
  int siz = 10;
  
  Point(int x, int y) {
    _x = x;
    _y = y;
    velx = random(-5,5);
    vely = random(-5,5);
    _x2 = _x;
    _y2 = _y;
    
  }
  
  void drawPoint() {
    /*fill(255);
    stroke(255);
    ellipse(_x2,_y2,siz,siz);*/
    
    velx += random(-2,2);
    vely += random(-2,2);
    
    if(velx > 50) {
      velx -= 10;
    } else if (velx < -50) {
      velx += 10;
    }
    
    if(vely > 50) {
      vely -= 10;
    } else if(vely < -50) {
      vely += 10;
    }
    
    
    _x2 = _x;
    _y2 = _y;
    
    _x += .005 * velx;
    _y += .005 * vely;
    
    if(_x < 0||_x > width) {
      velx = -velx;
    }
    
    if(_y < 0||_y > height) {
      vely = -vely;
    }
    
    noStroke();
    fill(_col[0],_col[1],_col[2]);
    ellipse(_x,_y,siz,siz);
    
    
    }
  
  void setCol(int col) {
    switch(col){
      case 0: _col[0] = 255;siz=20; break;
      case 1: _col[2] = 255; break;
      default: _col[1] = 0; break;
    }
  }
  
  void toggle(boolean tog) {
    if (!tog) {
      _col[0] = 65;
      _col[1] = 74;
      _col[2] = 76;
    } else {
      _col[0] = 0;
      _col[1] = 0;
      _col[2] = 255;
    }
  }
}
  
