//week04_3_void_setup_void_draw_void_mouseWheel
PShape taiwan, taiwan2;
void setup(){
  size(500,500);
  taiwan = loadShape("Taiwan-icon.svg");
  taiwan2 = loadShape("tw.svg");
}
void draw(){
  pushMatrix();
    scale(10);
    shape(taiwan);
  popMatrix();
  pushMatrix();
    scale(0.5);
    shape(taiwan2);
  popMatrix();
}
void mouseWheel(MouseEvent e){
  float d = e.getCount();
  if(1>0) taiwanScale *= 1.1;
  else taiwanScale *= 0.9;
}
