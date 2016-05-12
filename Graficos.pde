PImage menu;
PImage atras, atras2;
PImage b_iniciar, b_instruc, b_config, b_cred, b_salir;
PImage b_exit, bc_exit, b_home, bc_home;
PImage field, credits;
PImage mouseCursor;
color ColorMono;

class Graficos
{
  void iniciarGraficos(){
    menu = loadImage("images/Menu.png");
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
              Salir();//Salir.
              break;
    }
  }
  
  void IniciaMenu()
  {
    background (menu);
    if(mouseX>658 && mouseX<978 && mouseY>170 && mouseY<245){
    //image(b_iniciar,653,161);
    audio.SonidoBoton();

      if (mousePressed && (mouseButton == LEFT)){
       num_pantalla = 2;
      }
    }
    
    if(mouseX>658 && mouseX<978 && mouseY>295 && mouseY<370){
    //image(b_instruc,653,281);
    
          if (mousePressed && (mouseButton == LEFT)){
            num_pantalla = 3;
          }
    }
    
    //Configuración
    if(mouseX>658 && mouseX<978 && mouseY>415 && mouseY<490){
    //image(b_config,653,401);
          if (mousePressed && (mouseButton == LEFT)){
            num_pantalla = 4;
          }
    }
     
     //Créditos
     if(mouseX>658 && mouseX<978 && mouseY>535 && mouseY<610){
     //image(b_cred,653,522);
          if (mousePressed && (mouseButton == LEFT)){
            num_pantalla = 5;
          }
     }
     
     //Salir
     if(mouseX>20 && mouseX<340 && mouseY>670 && mouseY<745){
     //image(b_salir,19,659);
          if (mousePressed && (mouseButton == LEFT)){
            num_pantalla = 6;
          }
     }
  }
  
  void Juego()
  {
    //background (field);
   
    //image(atras,100,100); 
  
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
    
    //image(atras2,100,100);
  
     if (mousePressed && (mouseButton == LEFT) )
     {
       if(mouseX>100 && mouseX<242 && mouseY>100 && mouseY<204)
         num_pantalla = 1;
     }
     
    fill(100,200,100);
    textSize(22);
    text("Pantalla VERDE", 30,30);
  }
  
  /*Pantalla CONFIGURACIÓN*/
  void Configuracion()
  {
    background(255);
    text("Pantalla ROJA", 30,30);
    if (mousePressed && (mouseButton == LEFT) )
     {
       if(mouseX>100 && mouseX<242 && mouseY>100 && mouseY<204)
         config.disableAudio();
     }
  }
  
  /*Pantalla CRÉDITOS*/
  void Creditos()
  {
    //background (credits);
    
    /*Botón Salir*/
    //image(b_exit,895,665);
    if(mouseX>900 && mouseX<990 && mouseY>670 && mouseY<760){
       //image(bc_exit,895,665);
            if (mousePressed && (mouseButton == LEFT)){
            exit();
            }
    }
    
    /*Botón Regresar*/
    //image(b_home,810,665);
    if(mouseX>810 && mouseX<895 && mouseY>665 && mouseY<755){
       //image(bc_home,810,665);
            if (mousePressed && (mouseButton == LEFT)){
            num_pantalla = 1;
            }
    }
    
  }
  
  /*Pantalla SALIR*/
  void Salir(){
    exit();
  }
  
  
  
  
  //mouseCursor = loadImage("pinwheel.png");
  /*Cargar imágenes*/
   //atras = loadImage("back.jpg");
   //atras2 = loadImage("back2.png");
   
   /*Cargar botones*/
   //b_iniciar = loadImage("buttons/change_inicio.png");
   //b_instruc = loadImage("buttons/change_instrucciones.png");
   //b_config = loadImage("buttons/change_configuracion.png");
   //b_cred = loadImage("buttons/change_credits.png");
   //b_salir = loadImage("buttons/change_salir.png");
   
   //b_exit = loadImage("buttons/exit.png");
   //bc_exit = loadImage("buttons/change_exit.png");
   
   //b_home = loadImage("buttons/home.png");
   //bc_home = loadImage("buttons/change_home.png");
   /*Cargar cursor*/
  

   /*Cargar imágenes para el fondo*/
   //field = loadImage("images/Field.png");
   
   /*Ventanas*/
   //credits = loadImage("windows/credits.png");
   
    /*cursor*/
  //cursor(mouseCursor,0,0);
}