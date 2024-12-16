//week15_4_cicle_collision_cos_sin_vector_N_N2_M_M2_swap
void setup() {
  size(640, 360);
}
Ball ball= new Ball(100, 200, 20);
Ball ball2= new Ball(300, 200, 60);
void draw() {
  background(51);
  if(ball.checkCollision(ball2)) fill(#FFAAAA);
  else fill(255);
  ball.update();
  ball.display();
  ball2.update();
  ball2.display();
}
class Ball {
  float x, y, r;
  float vx, vy;
  Ball(int x0, int y0, int r0) {
    x= x0;
    y= y0;
    r= r0;
    vx = random(-10, +10);
    vy = random(-10, +10);
  }
  boolean checkCollision(Ball other){
    if(dist(x+vx, y+vy, other.x+other.vx, other.y+other.vy) <= r + other.r){
      PVector diff = new PVector(other.x-x, other.y-y);
      float len = diff.mag();
      print(len);
      float a = diff.heading();
      PVector N = diff.copy().normalize();
      N.mult(N.dot(new PVector(vx, vy)));
      PVector N2 = new PVector(-N.y, N.x).normalize();
      N2.mult(N2.dot(new PVector(vx, vy)));
      
      PVector M = diff.copy().normalize();
      M.mult(M.dot(new PVector(vx, vy)));
      PVector M2 = new PVector(-M.y, M.x).normalize();
      M2.mult(M2.dot(new PVector(other.vx, other.vy)));
      
      PVector newV1 = PVector.add(M, N2);
      PVector newV2 = PVector.add(N, M2);
      vx = newV1.x;
      vy = newV1.y;
      other.vx = newV2.x;
      other.vy = newV2.y;
      return true;
    } else return false;
  }
  void update() {
    if (x+vx >640 || x+vx <0) vx = -vx;
    if (y+vy <0 || y+vy >360) vy = -vy;
    x +=vx;
    y+=vy;
  }
  void display() {
    ellipse(x, y, r+r, r+r);
  }
}
