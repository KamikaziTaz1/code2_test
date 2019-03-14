int sceneNumber = 0;
int xVal, yVal;
int [] xPos = new int[0];
int [] yPos = new int[0];

String [] xValue;

void setup() {
  xValue = loadStrings("xValue.csv");
    
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
    sceneNumber = 0;
    break;
  }
}

void mousePressed() {
  sceneNumber++;
 // xPos = append(xVal, yVal);
}

void keyPressed() {
  //click anything to go to scene 1 from scene 0
  switch (sceneNumber) {
    case 0:
    if(key == ' '){
     sceneNumber = 1; 
    }
    break;
    //click 1 on scene 1 to go to scene 2 and 0 to go to scene 0
    case 1:
    if(key == '1') {
      sceneNumber = 2;
    }else if (key == '0'){
     sceneNumber = 0; 
    }
  }
  
  if (key == 's'){
 //  String[] lines = new String[x.length];
    for (int i = 0; i<xPos.length; i++) {
    }
  }
}

void scene0() {
  background(255, 0, 255);
  noStroke();
  ellipse(500, 200, 100, 100);//(x, y, w, h)
  ellipse(300, 200, 100, 100);
}

void scene1() {
  background(0, 255, 0);
   noStroke();
   rect(300, 100, 200, 100);//(x, y, w, h)
  fill(0);
  ellipse(500, 200, 100, 100);
  ellipse(300, 200, 100, 100);
  fill(255);
  
  
  
  if (mousePressed &&
  dist(mouseX, mouseY, width/2, height/2) < 25){
    sceneNumber = 2;
  }
   noStroke();
 
}

void scene2() {
  noStroke();
   background(0, 0, 255);
   noStroke();
   rect(500 + xVal, 100, 200, 100);//(x, y, w, h)
  fill(200, 0, 24);
  ellipse(700 + xVal, 200, 100, 100);
  ellipse(500 + xVal, 200, 100, 100);
  fill(30, 40, 25);
  fill(255);
  textSize(32);
  text("vroom vroom", 600, 600);
  
  xVal+= 5;
  
  println("xVal is" + xVal);
  
  xValue = append(xVal, str(xValue));
  saveStrings("xValue.csv", xValue);
  exit();
}
