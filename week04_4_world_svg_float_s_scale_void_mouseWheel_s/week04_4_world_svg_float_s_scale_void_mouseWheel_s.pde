//week04_4_world_svg_float_s_scale_void_mouseWheel_s
PShape world;
void setup(){
  size(800,400);
  world = loadShape("world.svg");
}
float s = 1;
void draw(){
  background(#92C2F5);
  scale(s);
  shape(world);
}
void mouseWheel(MouseEvent e){
  if(e.getCount()>0) s *= 1.1;
  else s *= 0.9;
}
