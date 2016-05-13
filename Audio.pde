import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim= new Minim(this);

boolean mute = false;

class Audio
{
  AudioPlayer background_music = minim.loadFile( "sound/Candyman.wav");
  AudioPlayer game_music = minim.loadFile( "sound/BackgroundMusic.wav");
  
  void MusicaFondo()
  {
    if(mute!=true){
      background_music.loop();
    }
  }
  void MusicaJuego(){
    if(mute!=true){
      game_music.loop();
    }
  }
  void ApagaMusica(){
    background_music.pause();
    game_music.pause();
  }
  void ApagaFondo(){
    background_music.pause();
  }
  void ApagaJuego(){
    game_music.pause();
  }
  void setMute(){
    mute = true;
  }
  void quitMute(){
    mute = false;
  }
}