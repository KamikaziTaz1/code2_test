int sceneNumber = 0;

void setup() {
 size(1000, 1000); 
}

void draw() {
 switch(sceneNumber){
   case 0 :
   scene0();
   break;
   
   case 1:
   scene1();
   break;
   
   case 2:
   scene2();
   break;
   
   case 3:
   scene3();
   break;
 }
}

void mousePressed() {
 sceneNumber++; 
}

void scene0() {
  background(255, 0, 0);
  
  if (key == '1'){
   sceneNumber = 1; 
  }
  
}

void scene1() {
  background(0, 255, 0);
  
  if (key == '2'){
   sceneNumber = 2; 
  }
}

void scene2() {
  background(0, 0, 255);
  
  if (key == '3'){
   sceneNumber = 3; 
  }
  
}

void scene3() {
  background(255, 255, 255);
  
  if (key == '4'){
   sceneNumber = 0; 
  }
}
