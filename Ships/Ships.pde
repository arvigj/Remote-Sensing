Point[] ships = new Point[50];
Radar radar1 = new Radar(150,150);
Radar radar2 = new Radar(450,450);
Radar radar3 = new Radar(150,450);
Radar radar4 = new Radar(450,150);
boolean toggle = true;

void setup() {
  size(600,600);
  background(64, 164, 223);
  frameRate(60);
  for (int i=0; i<50; i++) {
    ships[i] = new Point((int)random(600),(int)random(600));
    //ships[i] = new Point(120*(i/10), 120*(i%10));
    if(i % 7 == 0) {
      ships[i].setCol(0);
    } else {
      ships[i].setCol(1);
    }
    
  }
}

void draw() {
  if(toggle) {
    background(64, 164, 223);
  } else {
    background(65, 74, 76);
  }
  radar1.refresh();
  radar2.refresh();
  radar3.refresh();
  radar4.refresh();
  for (int i=0; i<50; i++) {
    ships[i].drawPoint();
  }
}

void mouseClicked() {
  toggle = !toggle;
  for (int i=0; i<50; i++) {
    if(i % 7 != 0) {
      ships[i].toggle(toggle);
    }
  }
  
}
