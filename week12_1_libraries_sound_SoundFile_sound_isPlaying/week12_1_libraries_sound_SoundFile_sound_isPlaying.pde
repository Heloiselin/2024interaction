//week12_1_libraries_sound_SoundFile_sound_isPlaying
import processing.sound.*;
SoundFile sound1, sound2;
int playing = 2;
void setup(){
  size(640,360);
  background(255);
  sound1 = new SoundFile(this, "Intro Song_Final.mp3");
  sound2 = new SoundFile(this, "In Game Music.mp3");
}
void draw(){
  if(sound1.isPlaying()){
    playing=1;
  }else if(sound2.isPlaying()){
    playing=2;
  }else{
    if(playing==1) sound2.play();
    else sound1.play();
  }
}
