import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim= new Minim(this);

class Audio
{
  AudioPlayer background_music = minim.loadFile( "sound/Candyman.wav");
  AudioPlayer button_sound = minim.loadFile( "sound/BackgroundMusic.wav");
  
  void MusicaFondo()
  {
    background_music.loop();
    return;
  }
  void SonidoBoton(){
    button_sound.play();
  }
  void ApagarMusica(){
    background_music.pause();
  }
}