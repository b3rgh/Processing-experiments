int half_grid = 1;                    // Double half_grid = number of fixed points (mirrored around center)
int o = 250;                          // Starting poisition in upper right corner (margin)
int r = 70;                           // Radius of moving lines
int num = 3;                          // Number of moving lines per fixed point
float speed = 0.01;                   // Speed of angle changes

int mid = 350;
float angle = 0;
float tx = .0;
float ty = .0;
int step = (700-2*o)/(2*half_grid-1); 
int radius = (mid-o)+r;

void setup() {
  size(700, 700);
  background(0);
  stroke(255,128,0);
}

void draw() {
  
  background(0);
  
  for(int n = 1; n<=num; n++){
    connect(n,num);
  }
  
  angle += speed;
  
  // saveFrame("one-####.png");
   
}

void connect(int a, int b) {

  tx = cos(angle+a*TWO_PI/b);
  ty = sin(angle+a*TWO_PI/b);
  
  for(int j=0; j<half_grid*2; j++) {
    for(int i=0; i<half_grid*2; i++){
      line(o+j*step, o+i*step, mid+radius*tx, mid+radius*ty);
    }
  }

}