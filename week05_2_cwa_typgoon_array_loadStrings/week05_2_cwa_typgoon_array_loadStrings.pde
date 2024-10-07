//week05_2_cwa_typgoon_array_loadStrings
int N = 299;
PImage [] imgs = new PImage[299];
void set up(){
  size(800,800);
  String [] filenames = loadStrings("list.txt");
  imgs[i] = loadImage(filenames[i]);
 }
}
void draw(){
  int i = frameCount % N;
  background(imgs[i]);
}
