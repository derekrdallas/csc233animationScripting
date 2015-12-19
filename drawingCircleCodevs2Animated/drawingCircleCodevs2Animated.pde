// global variables
 float cntrX= 250;
 float cntrY=250;
  
  float xPos=0.0;
  float yPos=0.0;
  float radius=50.0;
  float theta=0.0;
  float rad = radians(theta);
  float spacing=0.001;
  
  float easing=0.25;


void setup() {
  size (500, 500);
  smooth();
  frameRate(30);
  strokeWeight(15);

}

void draw(){
  
    //background(255);
    rad = radians(theta);
    xPos=radius*cos(rad);
    yPos=radius *sin(rad);
    point(cntrX+xPos, cntrY+yPos);
    theta+=(theta+spacing);
 /* if (theta>135){
    theta+=(theta+spacing) *easing;
  }*/
  
  if (theta>180){
    noLoop();
  }
  println(theta);
  
  
}


