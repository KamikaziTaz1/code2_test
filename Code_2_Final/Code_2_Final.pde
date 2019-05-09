int sceneNumber = 0;

void setup(){
 size(1000, 1000); 
}

void draw(){
 switch(sceneNumber){
   case 0 :
   scene0() ;
   break ;
   
   case 1 :
   scene1() ;
   break ;
   
   case 2 :
   scene2() ;
   break ;
   
   case 3 :
   scene3() ;
   break ;
   
   case 4 :
   scene4() ;
   break ;
   
   case 5 :
   scene5() ;
   break ;
   
   case 6 :
   scene6() ;
   break ;
   
   case 7 :
   scene7 (); 
   break ;
   
   case 8 :
   scene8 ();
   break ;
   
   case 9 :
   scene9 ();
   break ;
   
   case 10 :
   scene10 ();
   break ;
   
   case 11 :
   scene11 ();
   break ;
   
   case 12 :
   scene12 ();
   break ;
   
   case 13 :
   scene13 ();
   break ;
   
   case 14 :
   scene14 ();
   break ;
   
   case 15 :
   scene15 ();
   break ;
 }
}

void keyPressed() {
 switch (sceneNumber) {
  case  0:
  if(key == '1') {
   sceneNumber = 1; 
  }
  break;
  case 1:
  if(key == '2') {
    sceneNumber = 2;
  }
  break;
  case 2:
  if(key == '3') {
   sceneNumber = 3;
  }
  break;
  case 3:
  if(key == '4') {
   sceneNumber = 4;
  }
   break;
   case 4:
   if(key == '5') {
    sceneNumber = 5; 
   }
   break;
   case 5:
   if(key == '6') {
    sceneNumber = 6; 
   }
   break;
   case 6:
   if(key == '7') {
    sceneNumber = 7; 
   }
   break;
   case 7:
   if(key == '8') {
      sceneNumber = 8; 
   }
   break;
   case 8:
   if(key == '9') {
    sceneNumber = 9;
   }
   break;
   case 9:
   if(key == '0') {
    sceneNumber = 10; 
   }
   break;
   case 10:
   if(key == '!') {
     sceneNumber = 11;
   }
   break;
   case 11:
   if(key == '@') {
     sceneNumber = 12;
   }
   break;
   case 12:
   if(key == '#') {
     sceneNumber = 13;
    }
   break;
   case 13:
   {
     if(key == '$') {
      sceneNumber = 14; 
     }
   }
   break;
   case 14:
   {
     if(key == '%') {
      sceneNumber = 15; 
     }
   }
   break;
   case 15:
   {
     if(key == CODED) {
       if (keyCode == DOWN) {
      sceneNumber = 1; 
       }
     }
   }
   break;
   }
  }
  
  void mousePressed(){
  if(sceneNumber != 0){
   sceneNumber++; 
  }
}

  void scene0(){
    background (0);
    textSize(16);
    text("A Stop Motion Animation by a Non-Animation Student, What could go wrong?  Spoilers, just about everything", 75, 500);
    fill(255);
  }
  
  void scene1(){//press 1
    background (0);
    noStroke();
    ellipse(500, 1000, 1000, 1000);
    fill(255, 255, 0);
  }
  void scene2(){//press 2
    background (0);
   ellipse(500, 1000, 1000, 1000);
   //rocket
    fill(255);
    rect(450, 100, 100, 200); //(x, y, w, h)
    fill(255);
    //ellipse(500, 100, 100, 100);
    rect(400, 200, 50, 180);
    rect(540, 200, 50, 180);
    fill(255, 255, 0);
  }
  
  void scene3() {//press 3
     background (0);
   ellipse(500, 1000, 1000, 1000);
   //rocket
    fill(255);
    rect(450, 120, 100, 200); //(x, y, w, h)
    fill(255, 255, 255);
    //ellipse(500, 120, 100, 100);
    rect(400, 220, 50, 180);
    rect(540, 220, 50, 180);
    fill(255, 255, 0);
  }
  
  void scene4() {//press 4
     background (0);
   ellipse(500, 1000, 1000, 1000);
   //rocket
    fill(255);
    rect(450, 140, 100, 200); //(x, y, w, h)
    fill(255, 255, 255);
    //ellipse(500, 140, 100, 100);
    rect(400, 240, 50, 180);
    rect(540, 240, 50, 180);
    fill(255, 255, 0);
  }
  
  void scene5() {//press 5
    background (0);
   ellipse(500, 1000, 1000, 1000);
   //rocket
    fill(255);
    rect(450, 150, 100, 200); //(x, y, w, h)
    fill(255, 255, 255);
    //ellipse(500, 160, 100, 100);
    rect(400, 250, 50, 180);
    rect(540, 250, 50, 180);
    fill(255, 255, 0);
  }
  
  void scene6() {//press 6
    background (0);
   ellipse(500, 1000, 1000, 1000);
   //rocket
    fill(255);
    rect(450, 170, 100, 200); //(x, y, w, h)
    fill(255, 255, 255);
    //ellipse(500, 180, 100, 100);
    rect(400, 270, 50, 180);
    rect(540, 270, 50, 180);
    fill(255, 255, 0);
  }
  
  void scene7() {//press 7
    background (0);
   ellipse(500, 1000, 1000, 1000);
   //rocket
    fill(255);
    rect(450, 200, 100, 200); //(x, y, w, h)
    fill(255, 255, 255);
    //ellipse(500, 210, 100, 100);
    rect(400, 300, 50, 180);
    rect(540, 300, 50, 180);
    fill(255, 255, 0);
  }
  
  void scene8() {//press 8
     background (0);
   ellipse(500, 1000, 1000, 1000);
   //rocket
    fill(255);
    rect(450, 210, 100, 200); //(x, y, w, h)
    fill(255, 255, 255);
    //X                                                            ellipse(500, 220, 100, 100);
    rect(400, 310, 50, 180);
    rect(540, 310, 50, 180);
    fill(255, 255, 0);
  }
  
  void scene9() {//press 9
    background (0);
   ellipse(500, 1000, 1000, 1000);
   //rocket
    fill(255);
    rect(450, 220, 100, 200); //(x, y, w, h)
    fill(255, 255, 255);
    //ellipse(500, 230, 100, 100);
    rect(400, 320, 50, 180);
    rect(540, 320, 50, 180);
    fill(255, 255, 0);
    textSize(16);
    text("Oh Crap, we're almost out of fuel", 20, 40);
    textSize(16);
    text("To Abandon Mission, press 0", 20, 60);
    text("To Continue with Mission, press !", 20, 80);
    if(key == '!') {
     sceneNumber = 11;
   }
    
  }
  
  void scene10() {//press 0
    background (0);
   ellipse(500, 1000, 1000, 1000);
   //rocket
    fill(255);
    rect(450, 220, 100, 200); //(x, y, w, h)
    fill(255, 255, 255);
    //ellipse(500, 230, 100, 100);
    rect(400, 320, 50, 180);
    rect(540, 320, 50, 180);
    fill(255, 255, 0);
    textSize(16);
    text("OK, We're Gone", 20, 40);    
  }
  
  void scene11() {//press !
    background (0);
   ellipse(500, 1000, 1000, 1000);
   //rocket
    fill(255);
    rect(450, 230, 100, 200); //(x, y, w, h)
    fill(255, 255, 255);
    //ellipse(500, 240, 100, 100);
    rect(400, 330, 50, 180);
    rect(540, 330, 50, 180);
    fill(255, 255, 0);
    textSize(16);
    text("We gotta keep going", 20, 40);
  }
  
  void scene12() {//press @
      background (0);
   ellipse(500, 1000, 1000, 1000);
   //rocket
    fill(255);
    rect(450, 230, 100, 200); //(x, y, w, h)
    fill(255, 255, 255);
    //ellipse(500, 240, 100, 100);
    rect(400, 330, 50, 180);
    rect(540, 330, 50, 180);
    fill(255, 255, 0);
  }
  
  void scene13() {//press #
    background (0);
   ellipse(500, 1000, 1000, 1000);
   //rocket
    fill(255);
    rect(450, 300, 100, 200); //(x, y, w, h)
    fill(255, 255, 255);
    //ellipse(500, 300, 100, 100);
    rect(400, 400, 50, 180);
    rect(540, 400, 50, 180);
    fill(255, 255, 0);
  }
  
  void scene14() {//press $
    background (0);
   ellipse(500, 1000, 1000, 1000);
   //rocket
    fill(255);
    rect(450, 300, 100, 200); //(x, y, w, h)
    fill(255, 255, 255);
    //ellipse(500, 300, 100, 100);
    rect(400, 400, 50, 180);
    rect(540, 400, 50, 180);
    fill(255, 255, 0);
  }
  
  void scene15() {//press %
    background (0);
    textSize(32);
    text("The End, please subscribe to PewDiePie", 250, 500);
  }  
    
