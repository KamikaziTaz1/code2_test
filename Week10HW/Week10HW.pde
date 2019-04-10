float x;
float yRandom, yNoise;
float n;

void setup(){
  size(1000, 500);
  background(255, 25, 26);
}

void draw(){
  if(x>=width){
   x = 0; 
  }
  x++;
  yRandom = random(0, height/2);
  n += .01;
  
  float s = noise(n);
  yNoise = map(n, 0, 1, height/2, height);
  
  println(yNoise);
  
  ellipse(x, yRandom, 10, 10);
  ellipse(x, yNoise, 10,10);
}
