String a[];
float b[];

void setup(){
  background(255);
  size(600,600);
  a=new String[4];
  b=new float[4];
  for(int i=0;i<4;i++){
    a[0]="inspirational";
    a[1]="so inspirational";
    a[2]="don't you feel so inspired";
    a[3]="motivating quotes are so motivating";
    b[i]=width/4*(i+.5);
  }
}

void draw(){
  background(255);
  for(int i=0;i<4;i++){
    if(b[i]-100<mouseX && mouseX<b[i]+100 && 100<mouseY && mouseY<300 && mousePressed){
      displayText(a[i]);
      fill(255);
    } else {
      fill(0);
    }
    ellipse(b[i],200,100,100);
  }
}

void displayText(String s){
  textSize(32);
  textAlign(CENTER,CENTER);
  fill(0);
  text(s,width/2,height/2);
}
