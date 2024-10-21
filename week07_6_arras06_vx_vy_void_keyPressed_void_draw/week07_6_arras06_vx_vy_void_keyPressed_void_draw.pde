//week07_6_arras06_vx_vy_void_keyPressed_void_draw
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
  stroke(214);
  float dx = mx - x, dy = my - y;
  float a = atan2(dy, dx);
  line(x, y, mx, my);
  myTank(x, y, a);
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
