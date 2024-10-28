//week08_1_int_page_if_page_0_1
void setup(){
  size(640,480);
}
int page = 0; //0開場畫面 1第一關 2第二關
void draw(){
  if(page==0){
    background(0);
    textSize(70);
    textAllign(CENTER,CENTER);
    text("Opening", 320,240);
  }
  else if(page==1){
    background(img);
  }
}
void maouse
