class Blackholes{
  //position
  //color
  //opacity
  float x, y;
  color c;
  float gravity;
  float size;
}

  Blackholes(float _x, float _y){
   x = _x;
   y = _y;
   
   gravity = random(1, 4);
   size = random(10, 20); 
  }
  
  void display(){
   fill(255, o);
   ellipse(x, y, size, size);
  }
  //draw
  
  void size(){
    y += gravity;
    size--;
  }
  
  boolean isAlive(){
   if(y<height){
     return true;
   }else{
    return false; 
   }
  }
