int num = 15;     // Number of points
int lines = 24;   // Number of lines
int size = 25;    // Height of peaks
int c = 0;
PVector[][] points = new PVector[lines][num+1];

void setup() {
  size(720,405);
  background(0);
  fill(0);
  
  for(int j = 0; j<lines; j++) {
    for(int i = 1; i<=num; i++) {
      points[j][i] = new PVector(i*720/num, 300-j*25+random(size));
    }
    points[j][0] = new PVector(0, 300-j*25);
  }
  
  frameRate(7);
  
}

void draw() {
  
  background(0);
  
  for(int j = lines-1; j>0; j--) {
    noStroke();
    c = 200-(j*j);
    if (c<0) c=0;
    fill(c);
    beginShape();
    vertex(720, 405);
    vertex(0, 405);
    for(int i = 0; i<=num; i++) {
      vertex(points[j][i].x, points[j][i].y);
    }
    endShape();
  }
  
  
  for(int j = 0; j<lines-1; j++) {
    for(int i = 0; i<=num; i++) {
      points[lines-1-j][i].y = points[lines-2-j][i].y-(10+j*j/50);
    }
  }
  for(int i = 0; i<=num; i++) {
      points[0][i] = new PVector(i*720/num, 300+random(size));
  }
   
  //saveFrame("five-####.png");

}

void keyPressed() {
    //saveFrame("screenshot-#####.png");
    delay(1000);
}
