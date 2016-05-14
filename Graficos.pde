PImage menu, atras, atras2, b_iniciar, b_instruc, b_config, b_cred, b_salir, b_exit, bc_exit, b_home, bc_home, field, credits, mouseCursor, intento1,intento2,intento3,intento4,intento5, green_character, blue_character, brown_character, black_character, gris_menu, gris_salir, volume, no_volume, conf, b_yes, b_no, you_lose, you_won,start_instruction1;
PImage[] control = new PImage[3];
color ColorMono =color(70,43,1);
boolean tuto=true;
int Mx=0,My=0,num_pantalla = 7,frame;
class Graficos
{
  void CargarGraficos(){
      start_instruction1 = loadImage ("images/gesture_background.png");
    menu = loadImage("images/Menu.png");
    b_iniciar = loadImage("images/CInicio.png");
    field = loadImage("images/Field.png");
    mouseCursor = loadImage("images/pinwheel.png");
    b_instruc = loadImage("images/change_instrucciones.png");
    b_config = loadImage("images/change_configuracion.png");
    b_cred = loadImage("images/change_credits.png");
    b_salir = loadImage("images/change_salir.png");
    atras = loadImage("images/back.jpg");
    atras2 = loadImage("images/back2.png");
    b_exit = loadImage("images/exit.png");
    bc_exit = loadImage("images/change_exit.png");
    b_home = loadImage("images/home.png");
    bc_home = loadImage("images/change_home.png");
    credits = loadImage("images/credits.png");
    intento1=loadImage ("images/1intento.png");
    intento2=loadImage ("images/2intento.png");
    intento3=loadImage ("images/3intento.png");
    intento4=loadImage ("images/4intento.png");
    intento5=loadImage ("images/5intento.png");
    green_character=loadImage ("images/green_character.png");
    blue_character=loadImage ("images/blue_character.png");
    brown_character=loadImage ("images/brown_character.png");
    black_character=loadImage ("images/black_character.png");
    gris_menu=loadImage ("images/gris_menu.png");
    gris_salir=loadImage ("images/gris_salir.png");
    volume=loadImage ("images/volume.png");
    no_volume=loadImage ("images/no_volume.png");
    conf = loadImage("images/config.png");
    b_yes=loadImage ("images/yes.png");
    b_no=loadImage ("images/no.png");
    you_lose=loadImage ("images/you_lose.png");
    you_won=loadImage ("images/you_won.png");
    control[0]  = loadImage("images/00.png");
    control[1]  = loadImage("images/01.png"); 
    control[2]  = loadImage("images/02.png");
    //noCursor();
  }
  void Tutorial(){
      while(tuto){
        background(start_instruction1);
        System.out.println(frame);
      frame = (frame+1) % 3;  //Para crear el ciclo
      image(control[frame], 10, 200, 550, 385);
      delay(1000);
    if(frame==2){num_pantalla=1;}}
  }
  void Inicio(){
    Mx = int((x1*2)*1024);
    My = int((y1*2)*768);
    switch(num_pantalla)
    {
      case 1:
              IniciaMenu();//Menú principal.
              break;
      case 2://Iniciar.
              Juego();
              break;
      case 3:
              Instrucciones();//Instrucciones.
              break;
      case 4:
              Configuracion();//Configuración.
              break;
      case 5:
              Creditos();//Créditos.
              break;
      case 6:
              exit();//Salir.
              break;
      case 7:
              Tutorial();
              break;
    }
  }
  
  void IniciaMenu()
  {
    background (menu);
    image(mouseCursor,Mx,My);
    if(Mx>658 && Mx<978 && My>170 && My<245){
    image(b_iniciar,653,161);
    

      if (hecho){
       num_pantalla = 2;
       audio.ApagaFondo();
       audio.MusicaJuego();
      }
    }
    
    if(Mx>658 && Mx<978 && My>295 && My<370){
    image(b_instruc,653,281);
    
          if (hecho){
            num_pantalla = 3;
          }
    }
    
    //Configuración
    if(Mx>658 && Mx<978 && My>415 && My<490){
    image(b_config,653,401);
          if (hecho){
            num_pantalla = 4;
          }
    }
     
     //Créditos
     if(Mx>658 && Mx<978 && My>535 && My<610){
     image(b_cred,653,522);
          if (hecho){
            num_pantalla = 5;
          }
     }
     
     //Salir
     if(Mx>20 && Mx<340 && My>670 && My<745){
     image(b_salir,19,659);
          if (hecho){
            num_pantalla = 6;
          }
     }
  }
  
  void Juego()
  {
    background (field);
    image(mouseCursor,Mx,My);
    image(atras,100,100); 
  
    if (hecho)
    { 
      if(Mx>100 && Mx<422 && My>100 && My<257)
        num_pantalla = 1;
    }
  }
  
  
  /*Pantalla INSTRUCCIONES*/
  void Instrucciones()
  {
    background(255);
    image(mouseCursor,Mx,My);
    image(atras2,100,100);
  
     if (hecho)
     {
       if(Mx>100 && Mx<242 && My>100 && My<204)
         num_pantalla = 1;
     }
     
    fill(100,200,100);
    textSize(22);
    text("Pantalla VERDE", 30,30);
  }
  
  void Configuracion()
{
  background(conf);
  image(mouseCursor,Mx,My);
  
  /*Volume*/
  if (Mx>425 && Mx<513 && My>310 && My<398) {
    image(volume, 425, 310);
    if (hecho) {
      audio.quitMute();
      audio.MusicaFondo();
    }
  }
  
   /*No Volume*/
  if (Mx>555 && Mx<643 && My>315 && My<403) {
    image(no_volume, 555, 315);
    if (hecho) {
      audio.ApagaMusica();
      audio.setMute();
    }
  }
  
  
  
  /*Green*/
  if (Mx>430 && Mx<490 && My>425 && My<550) {
    image(green_character, 430, 425);
    if (hecho) {
      config.setColor(3);
    }
  }
  
  /*Blue*/
  if (Mx>510 && Mx<570 && My>425 && My<550) {
    image(blue_character, 510, 425);
    if (hecho) {
      config.setColor(4);
    }
  }
  
  /*Brown*/
  if (Mx>590 && Mx<650 && My>425 && My<550) {
    image(brown_character, 590, 425);
    if (hecho) {
      config.setColor(1);
    }
  }
  
  /*Black*/
  if (Mx>670 && Mx<730 && My>425 && My<550) {
    image(black_character, 665, 425);
    if (hecho) {
      config.setColor(2);
    }
  }
  
  
  /*Intento1*/
  if (Mx>400 && Mx<468 && My>610 && My<658) {
    image(intento1, 400, 610);
    if (hecho) {
      config.setVida(1);
    }
  }
  
  /*Intento2*/
  if (Mx>475 && Mx<543 && My>610 && My<658) {
    image(intento2, 475, 610);
    if (hecho) {
      config.setVida(2);
    }
  }
  
  /*Intento3*/
  if (Mx>550 && Mx<618 && My>610 && My<658) {
    image(intento3, 550, 610);
    if (hecho) {
      config.setVida(3);
    }
  }
  
  /*Intento4*/
  if (Mx>625 && Mx<693 && My>610 && My<658) {
    image(intento4, 625, 610);
    if (hecho) {
      config.setVida(4);
    }
  }
  
  /*Intento5*/
  if (Mx>700 && Mx<768 && My>610 && My<658) {
    image(intento5, 700, 610);
    if (hecho) {
      config.setVida(5);
    }
  }
  
  
  
  /*Volver al menu*/
  if (Mx>820 && Mx<895 && My>655 && My<745) {
    image(gris_menu, 820, 655);
    if (hecho) {
     num_pantalla = 1;
    }
  }
  
  /*Cerrar*/
  if (Mx>920 && Mx<1010 && My>655 && My<745) {
    image(gris_salir, 920, 655);
    if (hecho) {
     exit();
    }
  }
}
  
  /*Pantalla CRÉDITOS*/
  void Creditos()
  {
    background (credits);
    image(mouseCursor,Mx,My);
    /*Botón Regresar*/
    image(b_home,810,665);
    if(Mx>810 && Mx<895 && My>665 && My<755){
       image(bc_home,810,665);
            if (hecho){
            num_pantalla = 1;
            }
    }
  }
  void Ganaste(){
    background (you_won);
    image(mouseCursor,Mx,My);
    if (Mx>255 && Mx<512 && My>511 && My<575) {
    image(b_yes, 255,511);
    if (hecho) {
    }
  }
  if (Mx>512 && Mx<769 && My>511 && My<575) {
    image(b_no,512,511);
    if (hecho) {
    }
  }
  }
  void Perdiste(){
    background (you_lose);
    image(mouseCursor,Mx,My);
    if (Mx>255 && Mx<512 && My>511 && My<575) {
    image(b_yes, 255,511);
    if (hecho) {
    }
  }
    if (Mx>512 && Mx<769 && My>511 && My<575) {
    image(b_no,512,511);
    if (hecho) {
    }
  }
  }
}