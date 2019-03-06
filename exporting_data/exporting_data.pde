int [] x = new int[0];
int [] y = new int[0];

void setup(){
 size(800, 800); 
}

void draw(){
 stroke(255);
  
  beginShape();
  for(int i = 0; i<x.length; i++){
   vertex(x[i], y[i]);
   fill(200, 93, 200);
   ellipse(x[i], y[i], 10, 10);
   
   println("x: " + x[i] + "y: " + y[i]);
  }
  
  endShape();
  
  
}

void mousePressed(){
 x = append(x, mouseX);
 y = append(y, mouseY);
}

void keyPressed(){
 if(key == 's'){
  String [] lines = new String[x.length];
  
  for(int i = 0; i<x.length; i++){
    lines[i] = x[i] + "\t" + y[i];// \t means tab.  Format is xPos, tab, yPos.  This is used as a way to differentiate between the two columns
  }
  
  saveStrings("lines.txt", lines);
  exit();
 }
}
