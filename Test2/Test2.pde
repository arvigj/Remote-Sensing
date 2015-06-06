Point[] ships = new Point[100];
float[][] container = new float[11][11];

void setup() {
  size(1200,600);
  for(int i=0; i<100; i++) {
    ships[i] = new Point((int)random(600),(int)random(600));
    //ships[i] = new Point(60*(i/10)+30, 60*(i%10)+30);
    if(i % 13 == 0) {
      ships[i].setCol(0);
    } else {
      ships[i].setCol(1);
    }
  }
  
  for(int i=0; i<10; i++) {
    for(int j=0; j<10; j++) {
      container[i][j] = 0;
    }
  }
}

void draw() {
  fill(64, 164, 223);
  rect(0,0,600,600);
  for (int i=0; i<100; i++) {
    ships[i].drawPoint();
    updateContainer(ships[i]);
  }
  
  for(int i=0; i<10; i++) {
    for(int j=0; j<10; j++) {
      fill(255-40*container[i][j]);
      rect(600+i*60,j*60,60,60);
      container[i][j]=0;
    }
  }
}

void updateContainer(Point ship) {
  if(((int)ship._y/60)< 10) {
    container[(int)(ship._x/60)][(int)(ship._y/60)]++;
    
  }
  
}
