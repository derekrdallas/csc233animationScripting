// This example will use one black and white image as a "mask" like effect and replace the black pixels with
// colored pixels at the same exact location from a second poster

PImage img;// vaderMask image
PImage starWars; // colored star wars poster
PImage finalImage = createImage(500, 750, RGB); // the new final image made upo of the twosource images

void setup() {
  size(500, 750);
  img = loadImage("vaderposterMask.jpg");//test this one
  starWars = loadImage("OrigstarWarsPosterReformat.jpg"); //replace pixel colors with this one
}

void draw() {
  loadPixels();

  // We must also call loadPixels() on the PImage since we are going to read its pixels.
  starWars.loadPixels();
  img.loadPixels();
  
  for (int y = 0; y < height; y++ ) {
    for (int x = 0; x < width; x++ ) {
      int loc = x + y*width;
      // The functions red(), green(), and blue() pull out the three color components from a pixel.
      float r = red(img.pixels [loc]); 
      float g = green(img.pixels[loc]);
      float b = blue(img.pixels[loc]);

      // Image Processing would go here
      //if the above image is black or slightly grey it will replace that pixel with the corresponding pixel index
      // from the colored image. 
      if (r<=100 && g<=100 && b<=100){
       
      r = red(starWars.pixels [loc]); 
      g = green(starWars.pixels[loc]);
      b = blue(starWars.pixels[loc]); 
        
      }
      // If we were to change the RGB values, we would do it here, before setting the pixel in the display window.

      // Set the display pixel to the final image pixels
      finalImage.pixels[loc] = color(r, g, b);
    }
  }

  finalImage.updatePixels();
  image(finalImage, 0,0);
  save("finalImageComposite2.png");
}
