PImage menu, atras, atras2, b_iniciar, b_instruc, b_config, b_cred, b_salir, b_exit, bc_exit, b_home, bc_home, field, credits, mouseCursor, intento1,intento2,intento3,intento4,intento5, green_character, blue_character, brown_character, black_character, gris_menu, gris_salir, volume, no_volume, conf, b_yes, b_no, you_lose, you_won;
color ColorMono =color(70,43,1);

class Graficos
{
  void CargarGraficos(){
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
    cursor(mouseCursor,0,0);
  }
  void Inicio(){
    switch(num_pantalla)
    {
      case 1:
              IniciaMenu();//Menú principal.
              break;
      case 2:
              Juego();//Iniciar.
              
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
    }
  }
  
  void IniciaMenu()
  {
    background (menu);
    if(mouseX>658 && mouseX<978 && mouseY>170 && mouseY<245){
    image(b_iniciar,653,161);
    

      if (mousePressed && (mouseButton == LEFT)){
       num_pantalla = 2;
       audio.ApagaFondo();
       audio.MusicaJuego();
      }
    }
    
    if(mouseX>658 && mouseX<978 && mouseY>295 && mouseY<370){
    image(b_instruc,653,281);
    
          if (mousePressed && (mouseButton == LEFT)){
            num_pantalla = 3;
          }
    }
    
    //Configuración
    if(mouseX>658 && mouseX<978 && mouseY>415 && mouseY<490){
    image(b_config,653,401);
          if (mousePressed && (mouseButton == LEFT)){
            num_pantalla = 4;
          }
    }
     
     //Créditos
     if(mouseX>658 && mouseX<978 && mouseY>535 && mouseY<610){
     image(b_cred,653,522);
          if (mousePressed && (mouseButton == LEFT)){
            num_pantalla = 5;
          }
     }
     
     //Salir
     if(mouseX>20 && mouseX<340 && mouseY>670 && mouseY<745){
     image(b_salir,19,659);
          if (mousePressed && (mouseButton == LEFT)){
            num_pantalla = 6;
          }
     }
  }
  
  void Juego()
  {
    background (field);
   
    image(atras,100,100); 
  
    if (mousePressed && (mouseButton == LEFT) )
    { 
      if(mouseX>100 && mouseX<422 && mouseY>100 && mouseY<257)
        num_pantalla = 1;
    }
  }
  
  
  /*Pantalla INSTRUCCIONES*/
  void Instrucciones()
  {
    background(255);
    
    image(atras2,100,100);
  
     if (mousePressed && (mouseButton == LEFT) )
     {
       if(mouseX>100 && mouseX<242 && mouseY>100 && mouseY<204)
         num_pantalla = 1;
     }
     
    fill(100,200,100);
    textSize(22);
    text("Pantalla VERDE", 30,30);
  }
  
  void Configuracion()
{
  background(conf);
  
  
  /*Volume*/
  if (mouseX>425 && mouseX<513 && mouseY>310 && mouseY<398) {
    image(volume, 425, 310);
    if (mousePressed && (mouseButton == LEFT)) {
      audio.quitMute();
      audio.MusicaFondo();
    }
  }
  
   /*No Volume*/
  if (mouseX>555 && mouseX<643 && mouseY>315 && mouseY<403) {
    image(no_volume, 555, 315);
    if (mousePressed && (mouseButton == LEFT)) {
      audio.ApagaMusica();
      audio.setMute();
    }
  }
  
  
  
  /*Green*/
  if (mouseX>430 && mouseX<490 && mouseY>425 && mouseY<550) {
    image(green_character, 430, 425);
    if (mousePressed && (mouseButton == LEFT)) {
      config.setColor(3);
    }
  }
  
  /*Blue*/
  if (mouseX>510 && mouseX<570 && mouseY>425 && mouseY<550) {
    image(blue_character, 510, 425);
    if (mousePressed && (mouseButton == LEFT)) {
      config.setColor(4);
    }
  }
  
  /*Brown*/
  if (mouseX>590 && mouseX<650 && mouseY>425 && mouseY<550) {
    image(brown_character, 590, 425);
    if (mousePressed && (mouseButton == LEFT)) {
      config.setColor(1);
    }
  }
  
  /*Black*/
  if (mouseX>670 && mouseX<730 && mouseY>425 && mouseY<550) {
    image(black_character, 665, 425);
    if (mousePressed && (mouseButton == LEFT)) {
      config.setColor(2);
    }
  }
  
  
  /*Intento1*/
  if (mouseX>400 && mouseX<468 && mouseY>610 && mouseY<658) {
    image(intento1, 400, 610);
    if (mousePressed && (mouseButton == LEFT)) {
      config.setVida(1);
    }
  }
  
  /*Intento2*/
  if (mouseX>475 && mouseX<543 && mouseY>610 && mouseY<658) {
    image(intento2, 475, 610);
    if (mousePressed && (mouseButton == LEFT)) {
      config.setVida(2);
    }
  }
  
  /*Intento3*/
  if (mouseX>550 && mouseX<618 && mouseY>610 && mouseY<658) {
    image(intento3, 550, 610);
    if (mousePressed && (mouseButton == LEFT)) {
      config.setVida(3);
    }
  }
  
  /*Intento4*/
  if (mouseX>625 && mouseX<693 && mouseY>610 && mouseY<658) {
    image(intento4, 625, 610);
    if (mousePressed && (mouseButton == LEFT)) {
      config.setVida(4);
    }
  }
  
  /*Intento5*/
  if (mouseX>700 && mouseX<768 && mouseY>610 && mouseY<658) {
    image(intento5, 700, 610);
    if (mousePressed && (mouseButton == LEFT)) {
      config.setVida(5);
    }
  }
  
  
  
  /*Volver al menu*/
  if (mouseX>820 && mouseX<895 && mouseY>655 && mouseY<745) {
    image(gris_menu, 820, 655);
    if (mousePressed && (mouseButton == LEFT)) {
     num_pantalla = 1;
     audio.MusicaJuego();
    }
  }
  
  /*Cerrar*/
  if (mouseX>920 && mouseX<1010 && mouseY>655 && mouseY<745) {
    image(gris_salir, 920, 655);
    if (mousePressed && (mouseButton == LEFT)) {
     exit();
    }
  }
}
  
  /*Pantalla CRÉDITOS*/
  void Creditos()
  {
    background (credits);
    /*Botón Regresar*/
    image(b_home,810,665);
    if(mouseX>810 && mouseX<895 && mouseY>665 && mouseY<755){
       image(bc_home,810,665);
            if (mousePressed && (mouseButton == LEFT)){
            num_pantalla = 1;
            }
    }
  }
}