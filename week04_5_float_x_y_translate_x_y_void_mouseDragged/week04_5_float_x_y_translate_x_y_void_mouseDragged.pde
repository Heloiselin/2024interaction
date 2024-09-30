//week04_5_float_x_y_translate_x_y_void_mouseDragged
PShape world;
void setup(){
  size(800,400);
  world = loadShape("world.svg");
}
float s = 0.4, x = 0, y = 0;
void draw(){
  background(#92C2F5);
  translate(x, y);
  scale(s);
  shape(world);
}
void mouseDragged(){
  x  += mouseX - pmouseX;
  y  += mouseY - pmouseY;
}
void mouseWheel(MouseEvent e){
  if(e.getCount()>0) s *= 1.1;
  else s *= 0.9;
}
