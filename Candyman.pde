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
   num_pantalla = 1;
   audio.MusicaFondo();
}

void draw(){
  
    switch(num_pantalla)
    {
      case 1:
              pantalla_uno();//Menú principal.
              break;
      case 2:
              pantalla_dos();//Iniciar.
              
              break;
      case 3:
              pantalla_tres();//Instrucciones.
              break;
              
      case 4:
              pantalla_cuatro();//Configuración.
              break;
              
      case 5:
              pantalla_cinco();//Créditos.
              break;
              
      case 6:
              pantalla_seis();//Salir.
              break;
    } 
}


void pantalla_uno()
{
  graficos.IniciaMenu();
  
  
    //Iniciar
    if(mouseX>658 && mouseX<978 && mouseY>170 && mouseY<245){
    //image(b_iniciar,653,161);
   
    //button_candy.play();

    if (mousePressed && (mouseButton == LEFT)){
     num_pantalla = 2;
    }
        
}
    
    //Instrucciones
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



/*Pantalla INICIAR*/
void pantalla_dos()
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
void pantalla_tres()
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
void pantalla_cuatro()
{
  background(255);
  text("Pantalla ROJA", 30,30);
}

/*Pantalla CRÉDITOS*/
void pantalla_cinco()
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
void pantalla_seis(){
  exit();
}