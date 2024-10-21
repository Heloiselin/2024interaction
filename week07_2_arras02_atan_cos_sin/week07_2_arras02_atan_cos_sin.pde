//week07_2_arras02_atan_cos_sin
void setup(){
  size(500,700);
}
float x = 250, y = 200;
void draw(){
  background(215,184,200);
  float dx = mouseX - x, dy = mouseY - y;
  float a = atan2(dy, dx);
  strokeWeight(20);
  line(x, y, x+cos(a)*40, y+sin(a)*40;
  
  fill(167,167,175);
  stroke(110,110,113);
  strokeWeight(4);
  rect(240,160,20,20);

  fill(204,102,156);
  stroke(125,84,105);
  strokeWeight(3);
  ellipse(x, y, 55,55);
  //line(x, y, mouseX, mouseY);

}
