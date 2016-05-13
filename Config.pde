class Config
{
  void setColor(int i){
    switch(i){
      case 1:
        ColorMono = color(70,43,1);
        break;
      case 2:
        ColorMono = (0);
        break;
      case 3:
        ColorMono = color(101,151,66);
        break;
      case 4:
        ColorMono = color(63,100,168);
        break;
    }
  }
  void setVida(int n){
    numVida = n;
  }
  int getVida(){
      return numVida;
  }
  
}