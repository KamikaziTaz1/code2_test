int w = 50;
int h = 25;
int cols, rows;
int score;
int timer;
int lives;
int addTime;

Ball b;
Paddle p;
Bricks myBricks [][];

void setup(){
  size(1000, 1000);
  cols = int(width/w);
  rows = int(height*.5/h);
  
  noStroke();
  
  textSize(10);
  
  myBricks = new Bricks[cols][rows];
  
  b = new Ball(width/2, height*.75, random(3, 5), random(-5, 4));
  p = new Paddle();
  
  timer = 60;
  lives = 3;
  
  for(int i = 0; i<cols; i++){
   for(int j = 0; j<rows; j++){
    myBricks[i][j] = new Bricks(i*w+5, j*h+5, w-10, h-10);//taking away -10 merges all together 
   }
  }
}

void draw(){
  background(0);
  
  textAlign(CENTER, TOP);
  text("Score: " + score, 150, 460);
  
  textAlign(LEFT, TOP);
  text("Time: " + addTime, 350, 460);
  
  textAlign(LEFT, TOP);
  text("Lives: " + 1f, 600, 460);
  
  timer=timer-1;
    if(timer==0){
      timer=60;
      addTime=addTime-1;
    }
  
  if(addTime == 0||1f == 0){
    b.vel.x=0;
    b.vel.y=0;
  }
  
  b.move();
  b.display();
  
  p.display();
  p.reset();
  
  if(b.pos.x<= b.size/2 || b.pos.x>= width-b.size/2){
   b.bounceSide(); 
  }
  
  if(b.pos.y<=b.size/2 || b.pos.y>= height-b.size/2){
   b.bounceTop(); 
  }
  
  if(b.pos.x >= p.x-p.w/2 && b.pos.y>=(p.y-b.size/2+p.h/2)){
   b.bouncePaddle(); 
  }
  
  //destroy bricks
  for(int i = 0; i<cols; i++){
   for(int j = 0; j<rows; j++){
    float red = map(i, 0, cols, 100, 255);
    float blue = map(j, 0, rows, 50, 205);
    myBricks[i][j].display(color(red, 255, blue));
    
          if(b.pos.x<= (myBricks[i][j].x + myBricks[i][j].w/2) && b.pos.x>= (myBricks[i][j].x - myBricks[i][j].w/2) 
        && b.pos.y<= (myBricks[i][j].y + myBricks[i][j].h/2) && b.pos.y>= (myBricks[i][j].y - myBricks[i][j].h/2)){
         myBricks[i][j].o = 0;  //just changing the opacity here but you can figure out how to remove the object using an array list 
      score = score+100;
      }
    }
  }
  
  if(keyPressed){
    if(key==CODED){
      if(keyCode == LEFT){
        p.left();
      }
      if(keyCode == RIGHT){
        p.right(); 
      }
    }
  }
}

void keyPressed(){

}
