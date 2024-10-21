//week07_4_arras04_background_for_line_line_void_keyPressed_keyCode
void setup(){
  size(500,700);
}
void keyPressed(){
  if(keyCode==RIGHT) x += 1;
  if(keyCode==LEFT) x -= 1;
  if(keyCode==UP) y -= 1;
  if(keyCode==DOWN) y += 1;
}
float x = 250, y = 200;
void draw(){
  background(219);
  stroke(210);
  strokeWeight(1);
  for(int i=0; i<30; i++){
    line(0, i*30, 500, i*30);
    line(i*30, 0, i*30, 500);
  }
  //background(215,184,200);
  //stroke(211,180,196);
  stroke(214);
  float dx = mouseX - x, dy = mouseY - y;
  float a = atan2(dy, dx);
  line(x, y, mouseX, mouseY);
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
