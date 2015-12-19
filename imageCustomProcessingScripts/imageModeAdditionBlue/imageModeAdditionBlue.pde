//This script will take two images, load thier pixels, from the exact same pixel index
//and add their individual color channels together, Ar = Br = Cr and return the new value
//to both images and then create the two new images. 
//I will take the base script and then send the data to specific functions 
//that deal with the data differently and return the new values and use those values
//in the new pimages created.
// two new images will be created and their color values should be different than the original.

// create PImages

PImage origA;
PImage origB;
PImage newA = createImage(1024, 768, RGB);//786432 total pixels
PImage newB = createImage(1024, 768, RGB);

//pixel arrays for color origA
float[] Ar= new float[786432];
float[] Ag= new float[786432];
float[] Ab= new float[786432];
//pixel arrays for color origB
float[] Br= new float[786432];
float[] Bg= new float[786432];
float[] Bb= new float[786432];
//pixel arrays for color finalimage C
float[] Cr= new float[786432];
float[] Cg= new float[786432];
float[] Cb= new float[786432];






void setup() {
  size(1024, 768);
  origA = loadImage("Desert.jpg");
  origB = loadImage("Lighthouse.jpg");
}

void draw() {
  loadPixels();

  // We must also call loadPixels() on the PImages since we are going to read its pixels.
  origA.loadPixels(); //load the pixels of origA image for use later

  //get each color channel from origA save into variable
  for (int y = 0; y < height; y++ ) {// forloop 1
    for (int x = 0; x < width; x++ ) {//for loop 2
      int loc = x + y*width; // location of pixel index
      // The functions red(), green(), and blue() pull out the three color components from a pixel.
      Ar[loc] = red(origA.pixels [loc]); //assigns pixel color values to an array based on location
      Ag[loc] = green(origA.pixels[loc]);
      Ab[loc] = blue(origA.pixels[loc]);
    }//end for loop 1
  }//end for loop 2


  origB.loadPixels(); //load the pixels of origB image for use later
  //get each color channel from origB save into variable
  for (int y = 0; y < height; y++ ) {// forloop 1
    for (int x = 0; x < width; x++ ) {//for loop 2
      int loc = x + y*width; // location of pixel index
      // The functions red(), green(), and blue() pull out the three color components from a pixel.
      Br[loc] = red(origB.pixels [loc]); //assigns pixel color values to an array based on location
      Bg[loc] = green(origB.pixels[loc]);
      Bb[loc] = blue(origB.pixels[loc]);
    }//end for loop 1
  }//end for loop 2


  //manipulate pixels with function
  addThem(); // this function add the red with red green with green blue with blue of the twoimages
  // and creates a new color value for them called Cr, Cg, Cb


//loop through all pixels in newA and assign RGB color to each pixel
  for (int y = 0; y < height; y++ ) {// forloop 1
    for (int x = 0; x < width; x++ ) {//for loop 2
      int loc = x + y*width; // location of pixel index

 newA.pixels[loc] = color(Ar[loc], Ar[loc], Cb[loc]);
    }//end loop 1
  }//end loop 2
  
  
  //loop through all pixels in newB and assign RGB color to each pixel
  for (int y = 0; y < height; y++ ) {// forloop 1
    for (int x = 0; x < width; x++ ) {//for loop 2
      int loc = x + y*width; // location of pixel index

 newB.pixels[loc] = color(Br[loc], Br[loc], Cb[loc]);
    }//end loop 1
  }//end loop 2


  //update pixels for all images
  newA.updatePixels();//updates the pixels of newA image for display
  newB.updatePixels();//updates the pixels of newB image for display


  // display the image
  //image(newA, 0, 0);
  image(newB, 0, 0);

// add original images at the top right
pushMatrix();
translate(width -((1024*0.1)*2+10),0);
scale(0.1);
image(origA,0,0);
popMatrix();

pushMatrix();
translate(width -((1024*0.1)),0);
scale(0.1);
image(origB,0,0);

popMatrix();



  //save the images
  //save("newImageA_addBlue.png");
  save("newImageB_addBlue.png");



} // end draw











//////Functions/////////////////////

//addition function

void addThem() {
  for (int y = 0; y < height; y++ ) {// forloop 1
    for (int x = 0; x < width; x++ ) {//for loop 2
      int loc = x + y*width; // location of pixel index
      // The functions red(), green(), and blue() pull out the three color components from a pixel.
      Cr[loc] = Ar [loc]+ Br[loc]; //assigns pixel color values to an array based on location
      Cg[loc] = Ag[loc]+Bg[loc];
      Cb[loc] = Ab[loc]+Bb[loc];
    }//end for loop 1
  }//end for loop 2
  print ("The addition function is complete");
}




