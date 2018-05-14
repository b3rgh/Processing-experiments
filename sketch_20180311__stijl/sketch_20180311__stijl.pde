
int t = 6;

void setup() {
  size(500, 500);
  colorMode(HSB, 360, 100, 100);
  rectMode(CORNER);
  noStroke();
  background(0, 0, 0);
  frameRate(300);
}

void draw() {
  background(0, 0, 0);
  
  float x1 = random(800)-400;
  float w1 = random(250);
  float x2 = x1 + w1;
  float x3 = x2 + 10*random(20);
  float w2 = random(250);
  float x4 = x3 + w2;
  
  float y1 = random(800)-400;
  float h1 = random(250);
  float y2 = y1 + h1;
  float y3 = y2 + 10*random(20);
  float h2 = random(250);
  float y4 = y3 + h2;

    float t1 = x1;
    float t2 = x2;  
    float t3 = y1;
    float t4 = y2;  
  
  switch(floor(random(4))) {
  case 0: 
    
    x1 = x3;
    x2 = x4;
    x3 = t1;
    x4 = t2;
    
    break;
  case 1: 
    y1 = y3;
    y2 = y4;
    y3 = t3;
    y4 = t4;
    
    break;
  case 2:
    x1 = x3;
    x2 = x4;
    x3 = t1;
    x4 = t2;
    y1 = y3;
    y2 = y4;
    y3 = t3;
    y4 = t4;
    
    break;  
    
  default: 
  }



  int c = floor(random(3));

  switch(c) {
  case 0: 
    fill(10, 100, 80); 
    break;
  case 1: 
    fill(55, 100, 100); 
    break;
  default: 
    fill(210, 100, 80); 
    break;
  }
  rect(x1, y1, x2-x1, y2-y1);
  
  c = floor(random(3));
  switch(c) {
  case 0: 
    fill(10, 100, 80); 
    break;
  case 1: 
    fill(55, 100, 100); 
    break;
  default: 
    fill(210, 100, 80); 
    break;
  }
  rect(x3, y3, x4-x3, y4-y3);

  fill(0, 0, 100);
  if(x1 < 500) rect(0, y1, width, t);
  if(y2 < 500) rect(0, y2-t, width, t);
  
  if(x3 < 500) rect(0, y3, width, t);
  if(y4 < 500) rect(0, y4-t, width, t);

  if(y1 < 500) rect(x1, 0, t, height);
  if(x2 < 500) rect(x2-t, 0, t, height);
  
  if(y3 < 500) rect(x3, 0, t, height);
  if(x4 < 500) rect(x4-t, 0, t, height);
  
  //saveFrame("s-####.png");
  
}

void keyPressed() {
  delay(3000);
}
