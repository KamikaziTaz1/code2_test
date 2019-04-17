String currentString = "A";//currentString is what generation we're on
int generations = 0;

void setup(){
  size(500, 500);
}

void draw(){
  
}

void mousePressed(){
 String nextString = "";
 
 for (int i = 0; i<currentString.length(); i++){
  char c = currentString.charAt(i);
  //write our rules
  if(c == 'A'){
   nextString += "AB"; 
  }else if(c == 'B'){
   nextString += "A"; 
  }
 }
  currentString = nextString;
  generations ++;
  println("Generations: " + generations + ":" + currentString);
}
