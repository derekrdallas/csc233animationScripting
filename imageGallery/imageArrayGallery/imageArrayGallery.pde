//This will create and array of thumbnail images, load the images into
//memory, and display them with a for loop.
PFont caption;


PImage[] thumbNails = new PImage [8]; // declares a new array with a size of 10 of data type PImage
int x=0;
int y=0;
int imageWidth = 60;
int imageheight = 40;
int xOffset =5;
int yOffset = 10;
int xSpacing = imageWidth + xOffset;
int ySpacing = imageheight + yOffset;
int i = 0;
String[] text = new String[8];

float alpha =0;
float newAlpha= map(alpha, 0, 255, 0, 60);
float frame= 0;
int galleryCount=0;


void setup() {
  size (515, 500);
  frameRate(30);
  caption = loadFont("ErasITC-Light-30.vlw");
  textFont(caption, 20);
  text[0] ="Actual costume for Doctor Octopus from Spiderman 2";
  text[1] ="Actual Mechanical Arm for \"Doc Oc\" from Spiderman 2";
  text[2] ="Actual Mechanical eyes for Godzilla 1998";
  text[3] ="Actual Mechanical eyes for Godzilla 1998";
  text[4] ="Scoby Doo Cel signed by Joe Barbera";
  text[5] ="Actual Prop from Men in Black 2";
  text[6] ="Salomé on Cart";
  text[7] ="Actual Transformers prop";

  //load array using for loop
  for (i = 0; i<thumbNails.length; i++) {
    thumbNails [i] = loadImage("img" + i + ".JPG");
    println("thumbNail # " + i);
  }// enf loading images for loop
}//end setup

void draw() {
  background(255);
  drawThumbs();
  testMouse();
}




//functions
void drawThumbs() {
  // display images with a for loop
  for (i = 0; i<thumbNails.length; i++) { // i for loop
    tint(255, 255, 255, 255);
    image(thumbNails [i], x, y, 60, 40); //places images at x and Y, size 30 x 20
    x = x + xSpacing;
    println("x value is " + x);
    println ("y value is " + y);
    if (x>width) {
      x=0;
    }
  } // end i for loop
}

void testMouse() {
  fill(0); // text color

  if (mouseX<xSpacing && mouseY<40) {
    image(thumbNails [0], 0, 50, 600, 400); //places images at x and Y, size 30 x 20
    text(text[0], 0, 470);
    println(text[0]);
  }
  else if (mouseX> xSpacing && mouseX<xSpacing*2 && mouseY<40) {// end if
    image(thumbNails [1], 0, 50, 600, 400); //places images at x and Y, size 30 x 20
    text(text[1], 0, 470);
  }//else if 1
  else if (mouseX>xSpacing*2 && mouseX<xSpacing*3 && mouseY<40) {// end if
    image(thumbNails [2], 0, 50, 600, 400); //places images at x and Y, size 30 x 20
    text(text[2], 0, 470);
  }//else if 2
  else if (mouseX>xSpacing*3 && mouseX<xSpacing*4 && mouseY<40) {// end if
    image(thumbNails [3], 0, 50, 600, 400); //places images at x and Y, size 30 x 20
    text(text[3], 0, 470);
  }//else if 3
  else if (mouseX>xSpacing*4 && mouseX<xSpacing*5 && mouseY<40) {// end if
    image(thumbNails [4], 0, 50, 600, 400); //places images at x and Y, size 30 x 20
    text(text[4], 0, 470);
  }//else if 4
  else if (mouseX>xSpacing*5 && mouseX<xSpacing*6 && mouseY<40) {// end if
    image(thumbNails [5], 0, 50, 600, 400); //places images at x and Y, size 30 x 20
    text(text[5], 0, 470);
  }//else if 5
  else if (mouseX>xSpacing*6 && mouseX<xSpacing*7 && mouseY<40) {// end if
    image(thumbNails [6], 0, 50, 600, 400); //places images at x and Y, size 30 x 20
    text(text[6], 0, 470);
  }//else if6
  else if (mouseX>xSpacing*7 && mouseX<xSpacing*8 && mouseY<40) {// end if
    image(thumbNails [7], 0, 50, 600, 400); //places images at x and Y, size 30 x 20
    text(text[7], 0, 470);
  }
  else {
    // fadingGallery();

    if (frame<=60) {
      alpha++;
    }
    else if (frame>60 && frame<=180) {
      alpha = alpha+0;
    }
    else if (frame>=180) {
      alpha--;
    }
    //fill(0,newAlpha);
    //ellipse(width/2,height/2,50,50);

    // display image array

    tint(255, 255, 255, newAlpha);
    image(thumbNails [galleryCount], 0, 50, 600, 400); //places images at x and Y, size 30 x 20
    fill(0, newAlpha);
    text(text[galleryCount], 0, 470);
    frame++;
    newAlpha= map(alpha, 0, 60, 0, 255);
    if (frame>240) {
      //noLoop();
      frame =0;
      alpha=0;
      galleryCount++;
    }
    if (galleryCount>thumbNails.length-1) {
      galleryCount=0;
    }
    println("this is alpha" + alpha);
    println("this is newAlpha" + newAlpha);
    println("this is frame" + frame);
    println("this is i" + i);
  }    //else if 7
}

void addText(int tempText) {
  int text= tempText;
}

void fadingGallery() {
  // shuffles through the image array fading in and fading out the images 
  boolean fade = false; // true means count increase to full opacity, false decreases to tansparent
  float alpha = 0; // controls fading in and out 0 = transparent 255 opaque
  float newAlpha = map(alpha, 0, 255, 0, 60); //this converts the alpha range from 0-255 to 0-60 or a full change of alpha in 2 seconds960frames)

  int speed =5; //controls speed of fade
}

