
int m = 30;
int size = 35;

void setup() {
  size(830,830);
  colorMode(HSB,360,100,100);
  fill(255);
  noStroke();
  frameRate(4);
}

void draw() {
  
  background(0,0,97);
  
  int x = floor(random(12));
  int y = floor(random(12));
  
  for(int i = 0; i < 12; i++) {
    for(int j = 0; j < 12; j++) {
      if(i != y || j != x) {
        int h = 40*floor(random(9))+floor(random(20))-10;
        int s = 30+12*floor(random(5));
        int b = 75+5*floor(random(4));
        fill(h,s,b);
      } else {
        fill(0,0,0);
      }
      ellipse(m+j*70, m+i*70, size, size);
    }
  }
  
  //saveFrame("frames/tth-#####.png");
  
}
