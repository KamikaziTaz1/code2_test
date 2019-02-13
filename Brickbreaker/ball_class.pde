class Ball
{
 PVector pos;
 PVector vel;
 
 int size = 10;
 
 Ball(float x, float y, float xSpeed, float ySpeed){
  PVector pos = new PVector(x, y);
  PVector vel = new PVector(xSpeed, ySpeed);
 }
 
 void bounceSide(){
  vel.x = -vel.x; 
 }
 
 void bounceTop(){
   vel.y = -vel.y;
 }
 
 void bouncePaddle(){
   vel = vel.mult(-1);
 }
 
 void move(){
   pos.add(vel);
 }
 
 void display(){
  fill(0, 255, 0); 
  ellipse(pos.x, pos.y, size, size);
 }
}
