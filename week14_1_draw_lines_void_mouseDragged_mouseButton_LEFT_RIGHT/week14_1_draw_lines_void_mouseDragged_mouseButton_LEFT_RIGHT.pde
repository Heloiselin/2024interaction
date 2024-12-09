//week14_1_draw_lines_void_mouseDragged_mouseButton_LEFT_RIGHT
void setup(){
  size(500,500);
}
int x=-1, y=1;
void draw(){
  if(x!=-1){
    ellipse(x,y,1,1);
    y++;
  }
}
void mouseDragged(){
  if(mouseButton==LEFT)  line(mouseX,mouseY,pmouseX,pmouseY);
  if(mouseButton==RIGHT){
    x=mouseX;
    y=mouseY;
  }
}
