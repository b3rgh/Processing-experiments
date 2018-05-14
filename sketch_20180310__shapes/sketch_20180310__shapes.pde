  float r = 100;
  float a = 0.01;
  int n = floor(random(12))+4;
  
  float x = random(150)+100;
  float y = random(150)+100;
  float c = random(360);
  float d = random(5)+1;
  float m = 1;

void setup() {
  size(500, 500);
  
  colorMode(HSB, 360);
  background(0,0,100);
  noStroke();
  frameRate(12);
}

void draw() {
  
  background(0,0,0);
  
  m = random(3);
  
  for(int j = 0; j < m; j++) {
  
    r = random(5)*20+20/m;
    n = 3+floor(random(3));
    a = random(TWO_PI);
  
     x = 250+m*(random(100)-50);
     y = 250+m*(random(100)-50);
  
     c = (c + (random(30)-15))%360;
  
    fill(c,360,360, 330);
    beginShape();
    for(int i = 0; i < n*2; i++) {
      curveVertex(x + r*cos(i*TWO_PI/n+a), y + r*sin(i*TWO_PI/n+a));
    }
    endShape();
  
  }
  
  // saveFrame("six-a-###.png");
  
}

void keyPressed() {
  
  c = random(360);

}
