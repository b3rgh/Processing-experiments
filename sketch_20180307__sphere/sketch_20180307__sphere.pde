float speed = 0.05; // Angle speed

float angle = 20.;
int sign = 1;
float m = 3;

void setup() {
  size(500, 500);
  background(0);
}

void draw() {
  
  if(keyPressed) {
    angle = 0.05;
  }
  
  background(0);
  
 
  noStroke();
  directionalLight(80, 10, 10, 0, 0, -1);
  directionalLight(80, 10, 10, 0, 1, -1);
  directionalLight(255, 75, 0, 0, -1, 0.5);
  
  translate(250, 250, 0);
  sphere(100-50*sin(angle*PI)/(angle*PI));
  
  angle += speed;
  
  //saveFrame("three-#####.png");
  
}

void keyPressed() {
    sign *= -1;
    m = random(5)+3;
}
