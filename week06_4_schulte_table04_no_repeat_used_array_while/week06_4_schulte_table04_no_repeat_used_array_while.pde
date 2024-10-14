//week06_4_schulte_table04_no_repeat_used_array_while
int [][]table = new int [5][5];
void setup(){
  size(500,500);
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
void draw(){
  for(int i=0; i<5; i++){
    for(int j=0; j<5; j++){
      fill(255); rect(j*100, i*100, 100, 100);
      fill(0); text(""+table[i][j], 50+j*100, 50+i*100);
    }
  }
}
