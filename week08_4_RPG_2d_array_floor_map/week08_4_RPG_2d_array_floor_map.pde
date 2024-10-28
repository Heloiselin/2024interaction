//week08_4_RPG_2d_array_floor_map
int [][] floor = {
  {4, 1, 1, 1, 5, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 5},
  {4, 1, 1, 1, 5, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 5},
  {4, 1, 1, 1, 5, 4, 1, 19, 3, 22, 3, 22, 9, 2, 2, 2, 9, 16, 1, 5},
  {4, 1, 1, 1, 5, 4, 1, 2, 3, 18, 3, 9, 9, 9, 2, 2, 2, 9, 9, 5},
};
PImage img;
PImage [] fimg = new PImage[40];
void setup(){
  size(640,480);
  img = loadImage("640x480.png");
  for(int i=1; i<=22; i++) fimg[i] = loadImage(i+".png");
}
void draw(){
  //background(img);
  for(int i=0; i<floor.length; i++){
    for(int j=0; j<20; j++){
      int now = floor[i][j];
      image(fimg[now], j*32, i*32);
    }
  }
}
