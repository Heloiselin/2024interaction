//week09_3_processing_sound
//Skech-Library-Manager libraryries 找 sound 可找到 Sound函式庫
//File-Example, 選 Libraries 核心函式庫 剛剛裝的 Sound 的 Soundfile 
//寫最精簡版本

import processing.sound.*;
SoundFile sound;
void setup() {
  size(500, 500);
  sound = new SoundFile(this, "In Game Music.mp3");
  sound.play();
  sound.loop();
} 
void draw(){
  
}
