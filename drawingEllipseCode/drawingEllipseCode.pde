//This is the basic algrithm for drawing
//an ellipse

/* and Ellipse has two different radius measurments


// global variables
 float cntrX= 250;
 float cntrY=250;
  
  float xPos=0.0;
  float yPos=0.0;
  float radiusX=25.0;
  float radiusY=50.0;
  float theta=0.0;
  float rad = radians(theta);


void setup() {
  size (500, 500);
  smooth();
  frameRate(30);
  strokeWeight(3);
}

void draw(){
  while (theta<361){
    rad = radians(theta);
    xPos=radiusX*cos(rad);
    yPos=radiusY *sin(rad);
    point(cntrX+xPos, cntrY+yPos);
    theta=theta+.01; 
  }
}



