int num_pantalla = 1;

Graficos graficos;
Audio audio;
Config config;
//Movement move;

void setup()
{
   size(1024, 768);
   graficos = new Graficos();
   audio = new Audio();
   config = new Config();
   //move = new Movement();
   /*Iniciar en la pantala principal*/
   audio.MusicaFondo();
}

void draw(){
    graficos.Inicio();
}