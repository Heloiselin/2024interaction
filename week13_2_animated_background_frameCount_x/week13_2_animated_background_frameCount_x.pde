//week13_2_animated_background_frameCount_x
void setup(){
  size(500,300);
}
void draw(){
  background(#FFFFF2);
  float x = (frameCount*5%1000);
  if(x>500) x=1000-x;
  for(int y=30; y<300; y+=50){
    ellipse(x, y, 30, 30);
  }
}
