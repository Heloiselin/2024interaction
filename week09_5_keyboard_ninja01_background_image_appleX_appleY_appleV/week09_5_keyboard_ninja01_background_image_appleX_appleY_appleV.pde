//week09_5_keyboard_ninja01_background_image_appleX_appleY_appleVX_appleVY_g
PImage board;
void setup(){
  size(600,400);
  board = loadImage("board.png");
}
float appleX = 100, appleY = 500, appleVX = 5, appleVY = -10;
void draw(){
  background(board);
  fill(255,0,0);
  ellipse(appleX, appleY, 80, 80);
  appleX += appleVX;
  appleY += appleVY;
  appleVY += 0.98; //gravity
  if(appleX>600){
    appleX = 100; appleY = 500; appleVX = 5; appleVY = -30;
  }
}
