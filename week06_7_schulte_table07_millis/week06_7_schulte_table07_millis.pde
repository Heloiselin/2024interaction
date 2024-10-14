//week06_7_schulte_table07_millis
int [] used = new int [26];
int [][]table = new int [5][5];
void setup(){
  size(500,600);
  textSize(50);
  textAlign(CENTER,CENTER);
  for(int i=0; i<5; i++){
    for(int j=0; j<5; j++){
      int now = int(random(1,26));
      while(used[now]==1) now = int(random(1,26));
      table[i][j] = now;
      used[now] = 1;
    }
  }
}
int [][] pressed = new int [5][5];
void draw(){
  background(#FFFFF2);
  for(int i=0; i<5; i++){
    for(int j=0; j<5; j++){
      if(pressed[i][j]==1) fill(128);
      else fill(255); 
      rect(j*100, i*100, 100, 100);
      fill(0); text(""+table[i][j], 50+j*100, 50+i*100);
    }
  }
  text("You used"+millis()/1000, 200, 550);
}
int want = 1;
void mousePressed(){
  int i = mouseY/100, j = mouseX/100;
  if(table[i][j]==want){
    pressed[i][j] = 1;
    want++;
  }
}
