ArrayList<PVector> clicks = new ArrayList<PVector>();
float angle = 0.01;

void setup() {
  size(720, 720);
  fill(0);
  stroke(255);
  background(0);
}

void draw() {

  int x1 = 460;
  int y1 = 360;
  int x2 = 260;
  int y2 = 360;
  int x3 = 360;
  int y3 = 260;
  int step = 5;
  
  
  fill(0);
  stroke(255);
  background(0);
  
  float f = 3;
  
  for(int i = 0; i < 40; i++) {
    for(int j = 0; j < clicks.size(); j++) {
      ellipse(clicks.get(j).x, clicks.get(j).y,  abs(1200*sin(angle))-abs(sin(angle)*30*i), abs(1200*sin(angle))-abs(sin(angle)*30*i));
    }
  }
  
  fill(255, 0, 0);
  noStroke();
  for(int j = 0; j < clicks.size(); j++) {
      ellipse(clicks.get(j).x, clicks.get(j).y, 5, 5);
   }
   
   angle += 0.03;
   
   //saveFrame("nine-###.png");
  
}

void keyPressed() {
  clicks = new ArrayList<PVector>();
}

void mouseClicked() {
  
  clicks.add(new PVector(mouseX, mouseY));
  
}
