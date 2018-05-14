
int o = 300;
int r = 1;

void setup() {
  size(600, 600);
  colorMode(HSB, 360, 100, 100);
  noStroke();
  fill(255);
  frameRate(1);
}

void draw() {
  background(0);

  int t = floor(random(10))+2;
  int u = floor(random(5))+1;
  int v = floor(random(10))+1;
  int c = 0;
  
   for (int j = 1; j <= 30; j++) {
     c += random(3);
     fill(c,100,100);
      for (int i = 0; i < v*j*j/10*t+u; i++) {
        ellipse(o+j*5*cos(i*TWO_PI/(v*j*j/t+u)+HALF_PI), o+j*5*sin(i*TWO_PI/(v*j*j/10*t+u)+HALF_PI), 2, 2);
      }
    }
    
    //fill(255,0,0);
    //ellipse(o, o, 2, 2);
    
    //saveFrame("eight-####.png");

}
