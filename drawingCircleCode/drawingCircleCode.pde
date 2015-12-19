// global variables
 float cntrX= 250;
 float cntrY=250;
  
  float xPos=0.0;
  float yPos=0.0;
  float radius=50.0;
  float theta=0.0;
  float rad = radians(theta);


void setup() {
  size (500, 500);
  smooth();
  frameRate(30);
  strokeWeight(10);
}

void draw(){
  while (theta<361){
    rad = radians(theta);
    xPos=radius*cos(rad);
    yPos=radius *sin(rad);
    point(cntrX+xPos, cntrY+yPos);
    theta=theta+.01; 
  }
}



