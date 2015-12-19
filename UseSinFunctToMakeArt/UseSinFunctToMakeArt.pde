
size(500,500);
background(255);
float rand;
float lineColor;


float a = 0.0;
float inc = TWO_PI/10.0;

for (int i = 0; i < width; i=i+4) {
  line(i, height/2, i, height/2+tan(a)*50);
  a = a + inc;
  rand=random(5.0);
  strokeWeight(rand);
  //lineColor=random(255);
  //stroke(lineColor);
  println(inc);
}
