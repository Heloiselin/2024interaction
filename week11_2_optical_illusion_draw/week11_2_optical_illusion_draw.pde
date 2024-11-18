//week11_2_optical_illusion_draw
size(600,600);
noStroke();
fill(236,152,52);//色1
rect(0,0,300,300);

fill(122,202,249);//色2
rect(300,0,300,300);

fill(12,241,128);//色3
rect(0,300,300,300);

fill(230,95,115);//色4
rect(300,300,300,300);

fill(122,202,249);//色2
for(float y=0; y<300; y+=15){
  for(float x=0; x<300; x+=30){
    ellipse(x, y, 11, 11);
    ellipse(x+15, y+7, 11, 11);
  }
}

fill(236,152,52);//色1
for(float y=0; y<300; y+=15){
  for(float x=0; x<300; x+=30){
    ellipse(300+x, y, 11, 11);
    ellipse(300+x+15, y+7, 11, 11);
  }
}
