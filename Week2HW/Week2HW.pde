Blackholes b;
ArrayList<Blackholes> myBlackhole;

void setup(){
  size(1000, 1000);
  noStroke();
  b = new Blackholes(random(0, width), 0);
  
  myBlackhole = new ArrayList<Blackholes>();
}

void draw(){
  background(1);
  
  for(int i = 0; i<myBlackhole.size(); i++){
    Blackholes b = myBlackhole.get(i);
    b.display();
    b.size();
    
    if(b.isAlive() == false){
     myBlackhole.remove(i); 
    }
  }
  
  if(frameCount % 10 == 0){
   myBlackhole.add(new Blackholes(random(0, width), 0); 
  }
}
