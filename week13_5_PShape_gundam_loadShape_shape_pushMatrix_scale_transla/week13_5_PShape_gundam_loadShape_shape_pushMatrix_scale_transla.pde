//week13_5_PShape_gundam_loadShape_shape_pushMatrix_scale_translate
PShape gundam;
void setup(){
  size(500,500,P3D);
  gundam=loadShape("Gundam.obj");
}
void draw(){
  background(#BBFF81);//淡綠色
  pushMatrix();
    translate(mouseX,mouseY);
    rotateY(radians(frameCount));
    rotate(radians(180));
    scale(5,5,5);
    shape(gundam,0,0);//shape(gundam,0,0,250/2,500/2);
  popMatrix();
}
