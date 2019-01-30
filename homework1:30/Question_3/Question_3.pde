int n=10;//rows & columns
color c [][];
boolean b [][];
int w;

void setup(){
  size(1000,1000);
  noStroke();
  w=width/n;
  
  c=new color[n][n];
  b=new boolean[n][n];
  
  for(int i=0;i<n;i++){
    for(int j=0;j<n;j++){
      c[i][j]=color(random(0,255),random(0,255),random(0,255));
      b[i][j]=false;
    }
  }
}

void draw(){
  for(int i=0;i<n;i++){
    for(int j=0;j<n;j++){
      if(i*w<mouseX && mouseX<(i+1)*w && j*w<mouseY && mouseY<(j+1)*w && mousePressed){
        b[i][j]=true;
      }
      if(b[i][j]){
        fill(c[i][j]);
      }
      if(b[i][j]==false){
        fill(255);
      }
      rect(i*w,j*w,w,w);
    }
  }
}
