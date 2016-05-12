int num_pantalla;

Graficos graficos;
Audio audio;
//Movement move;

void setup()
{
   size(1024, 768);
   graficos = new Graficos();
   audio = new Audio();
   //move = new Movement();
   /*Iniciar en la pantala principal*/
   audio.MusicaFondo();
}

void draw(){
    graficos.Inicio();
}