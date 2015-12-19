//This is the basic algorithm for drawing
//an ellipse

/* and Ellipse has two different radius measurments*/


// global variables
 float cntrX= 250;
 float cntrY=250;
  
  float xPos=0.0;
  float yPos=0.0;
  float radiusX=100.0;
  float radiusY=50.0;
  float theta=0.0;
  float rad = radians(theta);
  
  
  void drawCircle(){
   while (theta<361){
    rad = radians(theta);
    xPos=radiusX*cos(rad);
    yPos=radiusY *sin(rad);
    point(cntrX+xPos, cntrY+yPos);
    println("this is theta " + theta);
    theta++;
 
 
  } 
    
  
  }
  
  



void setup() {
  size (500, 500);
  smooth();
  frameRate(30);
  strokeWeight(3);
}

void draw(){
  //background(255);
  drawCircle();
  println("this is x "+ mouseX);
  println("this is y " + mouseY);
 
  
}



