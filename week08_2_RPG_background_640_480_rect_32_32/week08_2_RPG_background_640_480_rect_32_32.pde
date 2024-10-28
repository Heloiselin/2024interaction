//week08_2_RPG_background_640_480_rect_32_32
PImage img;
void setup(){
  size(640,480);
  img = loadImage("640x480.png");
}
int page = 0; //0開場畫面 1第一關 2第二關
void draw(){
  background(img);
  for(int i=0; i<15; i++){
    for(int j=0; j<20; j++){
      noFill();
      rect(j*32, i*32, 32, 32);
    }
  }
}
