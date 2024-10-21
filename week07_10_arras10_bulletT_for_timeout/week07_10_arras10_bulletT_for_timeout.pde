//week07_10_arras10_bulletT_for_timeout
void setup(){
  size(500,400);
}
void keyPressed(){
  if(keyCode==RIGHT) vx = 1; //x += 1;
  if(keyCode==LEFT) vx = -1; //x -= 1;
  if(keyCode==UP) vy = -1; //y -= 1;
  if(keyCode==DOWN) vy = 1; //y += 1;
}
void keyReleased(){
  if(keyCode==LEFT || keyCode==RIGHT) vx = 0;
  if(keyCode==UP || keyCode==DOWN) vy = 0;
}
float x = 250, y = 200, vx = 0, vy = 0;
void draw(){
  x += vx;
  y += vy;
  background(219);
  translate(-x, -y);
  translate(width/2, height/2);
  float mx = mouseX+x-width/2, my = mouseY+y-height/2;
  ellipse(mx, my, 8, 8);
  stroke(210);
  strokeWeight(1);
  for(int i=0; i<30; i++){
    line(0, i*30, 500, i*30);
    line(i*30, 0, i*30, 500);
  }
  //background(215,184,200);
  //stroke(211,180,196);
  float dx = mx - x, dy = my - y;
  float a = atan2(dy, dx);
  angle = a;
  line(x, y, mx, my);
  pushMatrix();
  myTank(x, y, a);
  popMatrix();
  for(int i=0; i<bulletN; i++){
    bulletX[i] += bulletVX[i];
    bulletY[i] += bulletVY[i];
    ellipse(bulletX[i], bulletY[i], 20, 20);
    bulletT[i] --;
    if(bulletT[i]==0){
      for(int k=i+1; k<bulletN; k++){
        bulletX[k-1] = bulletX[k];
        bulletY[k-1] = bulletY[k];
        bulletVX[k-1] = bulletVX[k];
        bulletVY[k-1] = bulletVY[k];
        bulletT[k-1] = bullet[k];
      }
      bulletN --;
    }
  }
  println(bulletN);
}
float angle;
int bulletN = 0;
float [] bulletX = new float[100];
float [] bulletY = new float[100];
float [] bulletVX = new float[100];
float [] bulletVY = new float[100];
void mousePressed(){
  int i = bulletN;
  bulletX[i] = x;
  bulletY[i] = y;
  bulletVX[i] = cos(angle);
  bulletVY[i] = sin(angle);
  bulletN ++;
  if(bulletN==100){
    for(int k=0; k<50; k++){
      bulletX[k] = bulletX[k+50];
      bulletY[k] = bulletY[k+50];
      bulletVX[k] = bulletVX[k+50];
      bulletVY[k] = bulletVY[k+50];
    }
    bulletN = 50;
  }
  println(bulletN);
}
void myTank(float x, float y, float a){
  translate(x, y);
  rotate(a);
  fill(167,167,175);
  stroke(110,110,113);
  strokeWeight(4);
  rect(20,-10,20,20);

  fill(204,102,156);
  stroke(125,84,105);
  strokeWeight(3);
  ellipse(0, 0, 55,55);
}
