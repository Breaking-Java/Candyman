class Config
{
  void disableAudio(){
      audio.ApagarMusica();
  }
  void enableAudio(){
      audio.MusicaFondo();
  }
  void setColor(int i){
    switch(i){
      case 1:
        ColorMono = (0);
        break;
      case 2:
        ColorMono = (255);
        break;
      case 3:
        ColorMono = (255);
        break;
      case 4:
        ColorMono = (255);
        break;
    }
  }
  void setVida(int n){
    numVida = n;
  }
  int getVida(){
      return 1;
  }
  
}