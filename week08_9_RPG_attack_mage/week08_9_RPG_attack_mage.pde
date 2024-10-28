//week08_9_RPG_attack_mage
int [][] floor = {
  {1, 1, 6, 6, 5, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 5},
  {1, 1, 1, 1, 5, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 5},
  {1, 1, 1, 1, 5, 4, 1, 19, 3, 22, 3, 22, 9, 2, 2, 2, 9, 13, 1, 5},
  {1, 1, 1, 1, 5, 4, 1, 2, 3, 18, 3, 9, 9, 9, 2, 2, 2, 9, 9, 5},
  {1, 1, 1, 1, 5, 4, 1, 2, 3, 18, 3, 9, 9, 9, 2, 2, 2, 9, 9, 5},
  {1, 1, 1, 1, 5, 4, 1, 2, 3, 18, 3, 9, 9, 9, 2, 2, 2, 9, 9, 5},
  {1, 1, 1, 1, 5, 4, 6, 2, 3, 18, 3, 9, 9, 9, 2, 2, 2, 9, 9, 5},
  {1, 1, 1, 1, 5, 4, 1, 2, 3, 18, 3, 9, 9, 9, 2, 2, 2, 9, 9, 5},
  {1, 1, 1, 1, 5, 4, 1, 2, 3, 18, 3, 9, 9, 9, 2, 2, 2, 9, 9, 5},
  {1, 1, 1, 1, 5, 4, 1, 2, 3, 18, 3, 9, 9, 9, 2, 2, 2, 9, 9, 5},
  {1, 1, 1, 1, 5, 4, 1, 2, 6, 18, 6, 9, 9, 9, 2, 2, 2, 9, 9, 5},
  {3, 1, 1, 1, 5, 4, 1, 2, 3, 18, 3, 9, 9, 9, 2, 2, 2, 9, 9, 5},
  {3, 1, 1, 1, 5, 4, 1, 2, 3, 18, 3, 9, 9, 9, 2, 2, 2, 9, 9, 5},
  {3, 1, 1, 1, 5, 4, 1, 2, 3, 18, 3, 9, 9, 9, 2, 2, 2, 9, 9, 5},
  {3, 1, 1, 1, 5, 4, 1, 2, 3, 18, 3, 9, 9, 9, 2, 2, 2, 9, 9, 5},
};
PImage img, user;
PImage [] fimg = new PImage[40];
void setup(){
  size(640,480);
  img = loadImage("640x480.png");
  user = loadImage("25.png");//勇者
  for(int i=1; i<=22; i++) fimg[i] = loadImage(i+".png");
}
int userI = 12, userJ = 15;
void draw(){
  //background(img);
  for(int i=0; i<floor.length; i++){
    for(int j=0; j<20; j++){
      int now = floor[i][j];
      image(fimg[now], j*32, i*32);
    }
  }
  image(user, 25, 25);
  textSize(30);
  text("Level: "+level, 25, 90);
  textSize(20);
  text("Hp: "+hp, 25, 140);
  text("Attack: "+attack, 25, 170);
  text("Defense: "+defense, 25, 200);
  text("Magic: "+magic, 25, 230);
  text("Exp: "+exp, 125, 260);
  text("Coins: "+coin, 25, 290);
  image(user, userJ*32, userI*32);
  if(gameOver==1) background(0, 255, 0);//綠色過關
  if(gameOver==2) background(255, 0, 0);//紅色過關
}
int level = 1, hp = 2693, attack = 15, defense = 16, magic = 10, exp = 72, coin = 72;
int gameOver = 0;
void keyPressed(){
  int newI = userI, newJ = userJ;//新的可能的位置
  if(keyCode==RIGHT) newJ++;
  if(keyCode==LEFT) newJ--;
  if(keyCode==UP) newI--;
  if(keyCode==DOWN) newI++;
  if(floor[newI][newJ]==17)//遇到魔法師
    if(hp-10<=0) gameOver = 2;
    else{
      hp -= 10;
      coin += 10;
      exp += 1;
      userI = newI;
      userJ = newJ;
      floor[userI][userJ] = 2;
    }
}
  else if(floor[newI][newJ]!=1 && floor[newI][newJ]!=3){//不能是石牆跟木頭牆，才能穿過去
    userI = newI;
    userJ = newJ;
    if(floor[userI][userJ]==21) gameOver = true;//走到樓上 遊戲結束
    floor[userI][userJ] = 6;
  }
}
