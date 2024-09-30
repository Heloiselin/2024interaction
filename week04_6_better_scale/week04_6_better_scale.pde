//week04_6_better_scale
PShape world;
void setup(){
  size(800,400);
  world = loadShape("world.svg");
}
float s = 0.4, x = 0, y = 0;
float realX=0, realY=0;
void draw(){
  background(#92C2F5);
  translate(x, y);
  scale(s);
  shape(world);
  ellipse(realX, realY, 10, 10);
}
void mouseDragged(){
  x  += mouseX - pmouseX;
  y  += mouseY - pmouseY;
}
void mouseWheel(MouseEvent e){
  realX = (mouseX-x)/s;
  realY = (mouseY-y)/s;
  if(e.getCount()>0) s *= 1.1;
  else s *= 0.9;
  x = x + realX*oldS - realX*s;
  y = y + realY*oldS - realY*s;
}
