/*Tri[][] o = {{new Tri(100,100), new Tri(400,100)},
             {new Tri(100,400), new Tri(400,400)}};
*/

int n = 7;
Tri[][] o = new Tri[n][n];


void setup() {
  size(600,600);
  stroke(255);
  fill(0);
  background(0);
  println(PI);
  
  for(int i = 0; i < n; i++) {
    for(int j = 0; j < n; j++) {
      o[i][j] = new Tri((i+1)*width/n-width/(2*n), (j+1)*height/n-height/(2*n));
    }
  }
  
}

void draw() {
  background(0);
  for(int i = 0; i < n; i++) {
    for(int j = 0; j < n; j++) {
      o[i][j].display();
      o[i][j].turn(0.002);
    }
  }
  
}

void keyPressed() {
  o[floor(random(n))][floor(random(n))].toggle();
}

class Tri {
  float angle;
  float rangle;
  int speed;
  int x, y;
  boolean reverse = false;
  
  Tri(int tx, int ty) {
    angle = 0.0;
    rangle = 0.0;
    speed = 1;
    x = tx;
    y = ty;
  }
  
  void display() {
    
    if(reverse) {
      stroke(255);
    triangle(x+10*cos(rangle*TWO_PI), y+10*sin(rangle*TWO_PI),
             x+10*cos(rangle*TWO_PI+TWO_PI/3), y+10*sin(rangle*TWO_PI+TWO_PI/3),
             x+10*cos(rangle*TWO_PI+2*TWO_PI/3), y+10*sin(rangle*TWO_PI+2*TWO_PI/3));
    } else {
      stroke(100);
    triangle(x+10*cos(angle*TWO_PI), y+10*sin(angle*TWO_PI),
             x+10*cos(angle*TWO_PI+TWO_PI/3), y+10*sin(angle*TWO_PI+TWO_PI/3),
             x+10*cos(angle*TWO_PI+2*TWO_PI/3), y+10*sin(angle*TWO_PI+2*TWO_PI/3));
    }
  }
  
  void turn(float da) {
    angle += da;
    if(reverse) {
      rangle -= da*speed;  
      if(rangle*TWO_PI <= angle*TWO_PI - 2*TWO_PI/3) {
        reverse = false;
      }
    }
    
  }
  
  void toggle() {
    reverse = true;
    rangle = angle;
    speed = 2+2*floor(random(3));
  }
  
}
