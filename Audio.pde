import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim= new Minim(this);

class Audio
{
  AudioPlayer background_music = minim.loadFile( "sound/BackgroundMusic.wav");
  //button_candy = minim.loadFile( "sound/.mp3");
  
  void MusicaFondo()
  {
    background_music.loop();
    return;
  }
}