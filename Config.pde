class Config
{
  Audio audioConfig = new Audio();
  void disableAudio(){
      audioConfig.ApagarMusica();
  }
  void enableAudio(){
      audioConfig.MusicaFondo();
  }
}