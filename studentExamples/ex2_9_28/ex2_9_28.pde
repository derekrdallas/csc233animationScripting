int x = 250;
int x2 = 0;
int x3 =500;
int y = 250;
int y2 = 0;
int y3 = 500;
int xSize= 500;
int xSize2= 500;
int xSize3= 500;
int xSize4= 500;
int xSize5= 500;
int ySize= 500;
int ySize2= 500;
int ySize3= 500;
int ySize4= 500;
int ySize5= 500;
int change = 20;
int red = 250;
int red2= 250;
int red3= 250;
int red4= 250;
int red5= 250;
int stop = 250;
int alpha= 0;
int alpha2= 240;
int alpha3= 240;
int alpha4= 240;
int alpha5= 240;

void setup(){
  size(500,500);
  ellipseMode(CENTER);
  strokeWeight(3);
  fill(250,0,0);
   
 
  while (xSize5 >=20){
  ellipse(x2,y3,xSize5,ySize5);
  fill(red5,0,0, alpha5);
  xSize5 = xSize5 - change;
  ySize5 = ySize5 - change;
  red5 = red5-10;
  alpha5 = alpha5 - 15;
 }
  while (xSize4 >=20){
  ellipse(x3,y2,xSize4,ySize4);
  fill(red4,0,0, alpha4);
  xSize4 = xSize4 - change;
  ySize4 = ySize4 - change;
  red4 = red4-10;
  alpha4 = alpha4 - 15;
 }
  while (xSize3 >=20){
  ellipse(x3,y3,xSize3,ySize3);
  fill(red3,0,0, alpha3);
  xSize3 = xSize3 - change;
  ySize3 = ySize3 - change;
  red3 = red3-10;
  alpha3 = alpha3 - 15;
 }
  while (xSize2 >=20){
  ellipse(x2,y2,xSize2,ySize2);
  fill(red2,0,0, alpha2);
  xSize2 = xSize2 - change;
  ySize2 = ySize2 - change;
  red2 = red2-10;
  alpha2 = alpha2 - 15;
 }
  while (xSize >=20){
  ellipse(x,y,xSize,ySize);
  fill(red,0,0, alpha);
  xSize = xSize - change;
  ySize = ySize - change;
  red = red-10;
  alpha = alpha + 15;

 }
  
}
