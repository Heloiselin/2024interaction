//week06_3_schulte_table03_random_2d_array_table
int [][]table = new int [5][5];
void setup(){
  size(500,500);
  textSize(50);
  textAlign(CENTER,CENTER);
  for(int i=0; i<5; i++){
    for(int j=0; j<5; j++){
      table[i][j] = int(random(1,26));
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
