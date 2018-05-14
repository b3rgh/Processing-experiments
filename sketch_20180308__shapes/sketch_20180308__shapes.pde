int num = 36;        // Number of points (lines: 16, shapes: 12, fading: )
int lin = 5;         // Number of lines  (lines:  6, shapes:  8, fading: )
int radius = 200;    // Space between points
int mem = 4;

int mid = 360;
PVector[] points = new PVector[num];
int[][] lines = new int[mem][lin+2];

void setup() {
  size(720, 720);
  colorMode(HSB, 100);
  background(0);
  stroke(60,100,80);
  strokeWeight(1.5);
  fill(60,100,80,50);
  
  frameRate(12);
  
  float p = 2;
  if(num == 4) p = 1;
  if(num == 6) p = 0;
  for(int i = 0; i < num; i++) {
    points[i] = new PVector(mid+radius*cos(i*TWO_PI/num+p*QUARTER_PI), mid-radius*sin(i*TWO_PI/num+p*QUARTER_PI));
  }
  
}

void draw() {

  background(0);
  
  for(int j = mem-1; j > 0; j--) {
  for(int i = 0; i < lin+2; i++) {
      lines[j][i] = lines[j-1][i];
  }
  }
  for(int i = 0; i < lin+2; i++) {
      lines[0][i] = floor(random(num));   
  }
  
  // DRAW GRID (ALL LINES)
  /*stroke(0, 0, 15);
  for(int j = 0; j < num-1; j++) {
    for(int i = 1; i < num; i++) {
      line(points[i].x, points[i].y, points[j].x, points[j].y);
    }
  }*/
  
  // FADING PREVIOUS LINES
  for(int i = 1; i < mem; i++) {
    for(int j = 0; j < lin-2; j++) {
      stroke(60, 60, 40-i*(30/(mem-1)));
      line(points[lines[i][lin-2]].x, points[lines[i][lin-2]].y, points[lines[i][j]].x, points[lines[i][j]].y);
      line(points[lines[i][lin-1]].x, points[lines[i][lin-1]].y, points[lines[i][j]].x, points[lines[i][j]].y);
    }
  }
      
  // LINES 
  float c = random(10);
  for(int i = 0; i < lin-2; i++) {
      stroke(c, 100, 90);
      line(points[lines[0][lin-2]].x, points[lines[0][lin-2]].y, points[lines[0][i]].x, points[lines[0][i]].y);
      line(points[lines[0][lin-1]].x, points[lines[0][lin-1]].y, points[lines[0][i]].x, points[lines[0][i]].y);
      c += random(6)-3;
   }/*
   
  //SHAPES
  /*float c = random(12);
  for(int i = 0; i < lin-2; i++) {
      noStroke();
      fill(c, 100, 80, 50);
      triangle(points[lines[0][lin-2]].x, points[lines[0][lin-2]].y, points[lines[0][lin-1]].x, points[lines[0][lin-1]].y, points[lines[0][i]].x, points[lines[0][i]].y);
      c += random(6)-3;
   }*/
   
  
  // saveFrame("four-#####.png");
  
}

void keyPressed() {
    // saveFrame("screenshot-#####-SHAPE.png");
    delay(1000);
}
