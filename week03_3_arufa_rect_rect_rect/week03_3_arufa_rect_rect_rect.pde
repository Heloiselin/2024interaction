//week03_3_rect_rect_rect
//把網路下載的 arufa.jpg 拉到程式的框框裡
PImage img;
void setup(){
 size(600,400); 
 img = loadImage("arufa.jpg");
}
void draw(){
 image(img,0,0);
 noCursor();
 noStroke();
 fill(200,200,255,128);
 rect(mouseX, mouseY-80, 70, 50);
 
 rect(mouseX-30, mouseY-40, 70, 50);
 rect(mouseX+30, mouseY-40, 70, 50);
 
 rect(mouseX+60, mouseY, 70, 50);
 rect(mouseX, mouseY, 70, 50);
 rect(mouseX-60, mouseY, 70, 50);
 
 rect(mouseX-90, mouseY+40, 70, 50);
 rect(mouseX-30, mouseY+40, 70, 50);
 rect(mouseX+30, mouseY+40, 70, 50);
 rect(mouseX+90, mouseY+40, 70, 50);
 
 rect(mouseX+60, mouseY+80, 70, 50);
 rect(mouseX, mouseY+80, 70, 50);
 rect(mouseX-60, mouseY+80, 70, 50);
 
 rect(mouseX-30, mouseY+120, 70, 50);
 rect(mouseX+30, mouseY+120, 70, 50);
 
 rect(mouseX, mouseY+160, 70, 50);
}
