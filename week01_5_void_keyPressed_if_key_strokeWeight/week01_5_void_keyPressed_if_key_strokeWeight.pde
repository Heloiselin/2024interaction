//week01_5_void_keyPressed_if_key_strokeWeight
void setup() {
  size(500, 500);
}
void draw() {
  if (mousePressed) line(mouseX, mouseY, pmouseX, pmouseY);
}//如果 mouse按下去，就畫線mouse的XY座標到previous mouse XY
void keyPressed() {
  if (key=='1') strokeWeight(1);
  if (key=='2') strokeWeight(5);
  if (key=='3')strokeWeight(10);
}//如果key按下去，看key的值，決定線的粗細。
