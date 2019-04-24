Stars[] sirius = new Stars[500];

PShape sun, planet1, planet2;
PImage sunText, planet1Text, planet2Text;


void setup(){
 fullScreen(P3D, 2);
 
 sunText = loadImage("Sun.jpg");
 planet1Text = loadImage("earthTex.jpg");
 planet2Text = loadImage("jupiterText.jpg");
 
 fill(255);
 noStroke();
 
 sun = createShape(SPHERE, 200);
 sun.setTexture(sunText);
 
 planet1 = createShape(SPHERE, 100);
 planet1.setTexture(planet1Text);
 
 planet2 = createShape(SPHERE, 150);
 planet2.setTexture(planet2Text);
 
 for (int i=0; i<sirius.length; i++) {
  sirius[i] = new Stars(); 
 }
 
}

void draw(){
  background(0);
  
  pushMatrix();
    translate(width/2, height/2);
    for (int i=0; i<sirius.length; i++){
      sirius[i].move();
      sirius[i].display();
    }
  popMatrix();
  
  pushMatrix();
  translate(width/2, height/2, -250);//translate the sun
  pushMatrix();//sets new coordinate system for canvas
  rotateY(PI * frameCount / 600);
  shape(sun);
  popMatrix();
  
  rotateY(PI * frameCount / 310);
  translate(0, 0, 500);
  shape(planet1);//Earth
  
    pushMatrix();
  rotateY(PI * frameCount / 300);
  translate(0, 0, 300);
  shape(planet2);//Jupiter (needs to be faster than earth)
    popMatrix();
  popMatrix();
  
  
}
