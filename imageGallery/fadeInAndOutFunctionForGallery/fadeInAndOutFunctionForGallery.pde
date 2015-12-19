// alpha fade in function
//boolean fade=true;
float alpha =0;
float newAlpha= map(alpha, 0, 255, 0, 60);
float frame= 0;

void setup() {
  size(500,500);
  frameRate(30);
}

void draw() {
background(255);
// fading gallery//////////////////////////////////
  if (frame<=60) {
    alpha++;
  }
  else if (frame>60 && frame<=180) {
    alpha = alpha+0;
  }
  else if(frame>=180){
    alpha--;
  }
  fill(0,newAlpha);
  ellipse(width/2,height/2,50,50);
  
  // display image array
  
  frame++;
  newAlpha= map(alpha, 0, 60, 0, 255);
  if (frame>240) {
    //noLoop();
    frame =0;
    alpha=0;
  }
  println("this is alpha" + alpha);
  println("this is newAlpha" + newAlpha);
  println("this is frame" + frame);
  
 //fadingGallery(); 
} // end draw

//fading gallery function
// when there is no mouse interaction
//the gallery will show as a series 
//fading images
//void fadingGallery(){
//  //declare local variables
//  float alpha =0;
//  float newAlpha= map(alpha, 0, 255, 0, 60);
//  float frame= 0;
//  
//  for(frame=0; frame<240;frame++){
// // this controls the timing of the gallery
//   if (frame<=60) {
//    alpha++;
//  }
//  else if (frame>60 && frame<=180) {
//    alpha = alpha+0;
//  }
//  else if(frame>=180){
//    alpha--;
//  }
//  fill(0,newAlpha);
//  ellipse(width/2,height/2,50,50);
//  frame++;
//  newAlpha= map(alpha, 0, 60, 0, 255);
//  if (frame>240) {
//    //noLoop();
//    frame =0;
//    alpha=0;
//  }
//  }// end for
//  println("this is alpha" + alpha);
//  println("this is newAlpha" + newAlpha);
//  println("this is frame" + frame);
//  
//  
// 
//}

