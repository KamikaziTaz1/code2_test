String a[];
float b[];

void setup(){
  background(255);
  size(1000, 1000);
  a=new String[6];
  b=new float[6];
  for(int i=0; i<4; i++){
    a[0]="Hi";
    a[1]="My name is";
    a[2]="Shantanu";
    a[3]="I";
    a[4]="Don't Like";
    a[5]="Strings";
    b[i]=width/6*(i+.5);
  }
}

void draw(){
  background(0);
    for(int i=0; i<6; i++){
     if(b[i]-100<mouseX && mouseX<b[i]+100 && 100<mouseY && mouseY<500 && mousePressed)
     { displayText(a[i]);
       fill(100);
        }else{
          fill(0);
 }
   rect(b[i], 200, 100, 100);
    }
}

void displayText(String s){
  textSize(64);
  textAlign(RIGHT, CENTER);
  fill(255);
  text(s, width/2, height/2);
}
