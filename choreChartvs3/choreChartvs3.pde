/* this sketch will create chore lists for
 three children 
 
 
 Code designed and written by Derek Dallas Fall 2015*/

// define variables

//main swappable chores
String[] swapChores = new String[9];// these are the swappable chores

String[] isabellaFinalChores = new String[18];// these are the swappable chores
String[] isabellaAddOnChores = new String[2];// these are the swappable chores

String[] finnFinalChores = new String[18];// these are the swappable chores
String[] finnAddOnChores = new String[4];// these are the swappable chores

String[] cecilyFinalChores = new String[18];// these are the swappable chores
String[] cecilyAddOnChores = new String[4];// these are the swappable chores

String[] dailyChores = new String[6];// these are the swappable chores

// assign values to arrays


//text
PFont ChartTitle;
PFont bellsTitle;
PFont finnTitle;
PFont cecilyTitle;
PFont choreItems;

// The font must be located in the sketch's 
// "data" directory to load successfully


//Impact-48.vlw chore list title
//IrisUPCBold-48.vlw kids name title
//IrisUPC-25.vlw listed chore items

int bellArrayindex=0;
int finnArrayindex=0;
int cecilyArrayindex=0;



void setup() {
  size(1000, 500);
  background(255);
  smooth(8);

  swapChores[0] = "Fill water filter";
  swapChores[1] = "Take our trash and recycling";
  swapChores[2] = "Vac stairs and basement";
  swapChores[3] = "load dish washer";
  swapChores[4] = "Vac kitchen, entry way, and halls";
  swapChores[5] = "Pick up dog poo";
  swapChores[6] = "Walk buttons";
  swapChores[7] = "Unload dish washer";
  swapChores[8] = "Vac living room, dinning room";


  // assign daily chores
  dailyChores[0] = "Brush teeth";
  dailyChores[1] = "Clean room";
  dailyChores[2] = "Help with baby";
  dailyChores[3] = "Do one thing for Mom";
  dailyChores[4] = "Do one thing for Dad";
  dailyChores[5] = "Do laundry";

  //add on lists
  isabellaAddOnChores[0] = "Kitchen help Friday and Saturday";
  isabellaAddOnChores[1] = "Clean downstairs bathroom";

  finnAddOnChores[0] ="Kitchen help Tuesday and Thursday ";
  finnAddOnChores[1] ="Feed Noodles";
  finnAddOnChores[2] ="Clean cat bathroom";
  finnAddOnChores[3] ="Scoop cat box";

  cecilyAddOnChores[0] = "Clean rat cage";
  cecilyAddOnChores[1] = "Kitchen help Monday and Wednesday";
  cecilyAddOnChores[2] = "Feed rats";
  cecilyAddOnChores[3] = "Clean pink bathroom";

  // distribute swappable chores into kids arrays
  distribSwapChores();
  // draw chore chart title
  drawTitle();
  displayDate();
  drawBellsTitle();
  drawFinnTitle();
  drawCecilyTitle();
  drawChartLines();
  completeBellsList();
  completefinnsList();
  completececilysList();
  fixNulls();
  fixNullsFinn();
  fixNullsCecily();
 

/*
  println("These are Isabella's chores ");
  println(isabellaFinalChores);
  println("These are Finn's chores. ");
  println(finnFinalChores);
  println("These are Cecily's chores. ");
  println(cecilyFinalChores);
*/  
 
 save("choreListNov3020153.jpeg"); 
  
}// end setup


// functions///////////////////////////////////////////////////////////////////////////////////
void drawTitle() {
  ChartTitle = loadFont("Impact-48.vlw");
  fill(0);
  textFont(ChartTitle);
  text("Weekly Chore Chart", width/3, height/9);
}

void drawBellsTitle() {
  bellsTitle = loadFont("IrisUPCBold-48.vlw");
  fill(#88CCED);
  textFont(bellsTitle);
  text("Isabellas Chores", 50, 150);
}

void drawFinnTitle() {
  finnTitle = loadFont("IrisUPCBold-48.vlw");
  fill(#43CE58);
  textFont(finnTitle);
  text("Finns Chores", 400, 150);
}

void drawCecilyTitle() {
  cecilyTitle = loadFont("IrisUPCBold-48.vlw");
  fill(#F0B038);
  textFont(cecilyTitle);
  text("Cecilys Chores", 750, 150);
}

void drawChartLines() {
  //horizontal line
  stroke(200);
  line(50, 160, 950, 160);

  //vert line left
  stroke(200);
  line(width/3, 160, width/3, height-50);

  //vert line right
  stroke(200);
  line(width-(width/3), 160, width-(width/3), height-50);
}

void distribSwapChores() {
  int selectAkid = int(random(1, 4));
  for (int i=0; i<=swapChores.length-1; i++) {
    
     if (selectAkid==1) {
      isabellaFinalChores[bellArrayindex] = swapChores[i];
     // println("Option one was selected.");
      bellArrayindex++;
      selectAkid =int (random(1, 4));
    } else if (selectAkid==2) {
      finnFinalChores[finnArrayindex] = swapChores[i];  
     // println("Option two was selected.");
      finnArrayindex++;
      selectAkid =int (random(1, 4));
    } else {
      cecilyFinalChores[cecilyArrayindex] = swapChores[i];   
      //println("Option three was selected.");
      cecilyArrayindex++;
      selectAkid =int (random(1, 4));
    }//else
  }//end for
}//end funct.

void completeBellsList(){
  //daily chores
  for(int i=0; i <= dailyChores.length-1; i++){
   isabellaFinalChores[bellArrayindex] = dailyChores[i];
   bellArrayindex++;
    
  }//end for loop daily chores
  
  for(int i=0; i <= isabellaAddOnChores.length-1; i++){
   isabellaFinalChores[bellArrayindex] = isabellaAddOnChores[i];
   bellArrayindex++;
  }//end addon chores loop
  
  }//addon chores
  
  void completefinnsList(){
  //daily chores
  for(int i=0; i <= dailyChores.length-1; i++){
   finnFinalChores[finnArrayindex] = dailyChores[i];
   finnArrayindex++;
    
  }//end for loop daily chores
  
  for(int i=0; i <= finnAddOnChores.length-1; i++){
   finnFinalChores[finnArrayindex] = finnAddOnChores[i];
   finnArrayindex++;
  }//end addon chores loop
  
  }//addon chores
  
   void completececilysList(){
  //daily chores
  for(int i=0; i <= dailyChores.length-1; i++){
   cecilyFinalChores[cecilyArrayindex] = dailyChores[i];
   cecilyArrayindex++;
    
  }//end for loop daily chores
  
  for(int i=0; i <= cecilyAddOnChores.length-1; i++){
   cecilyFinalChores[cecilyArrayindex] = cecilyAddOnChores[i];
   cecilyArrayindex++;
  }//end addon chores loop
  
  }//addon chores
  
  void fixNulls(){
    float textX=50.0;
    float textY=175.0;
    float incrementY=20;
    
     choreItems = loadFont("IrisUPC-25.vlw");
     fill(#88CCED);
  textFont(choreItems);
    for (int i=0; i<isabellaFinalChores.length-1; i++){
      if(isabellaFinalChores[i]==null){
       isabellaFinalChores[i]=" "; 
      }
      println("This is chore # " + i + " " +isabellaFinalChores[i]);
      text(((i+1)+"  " + isabellaFinalChores[i]),textX,textY);
      textY=textY+incrementY;
    }
  }
  
   void fixNullsFinn(){
    float textX=(width/3)+5;
    float textY=175.0;
    float incrementY=20;
    
     choreItems = loadFont("IrisUPC-25.vlw");
     fill(#43CE58);
  textFont(choreItems);
    for (int i=0; i<finnFinalChores.length-1; i++){
      if(finnFinalChores[i]==null){
       finnFinalChores[i]=" "; 
      }
      println("This is chore # " + i + " " +finnFinalChores[i]);
      text(((i+1)+"  " + finnFinalChores[i]),textX,textY);
      textY=textY+incrementY;
    }
  }
  
   void fixNullsCecily(){
    float textX=(width-(width/3)+5);
    float textY=175.0;
    float incrementY=20;
    
     choreItems = loadFont("IrisUPC-25.vlw");
     fill(#F0B038);
  textFont(choreItems);
    for (int i=0; i<cecilyFinalChores.length-1; i++){
      if(cecilyFinalChores[i]==null){
       cecilyFinalChores[i]=" "; 
      }
      println("This is chore # " + i + " " +cecilyFinalChores[i]);
      text(((i+1)+"  " + cecilyFinalChores[i]),textX,textY);
      textY=textY+incrementY;
    }
  }
  
  void displayDate(){
   String m= String.valueOf(month()); 
   String d = String.valueOf(day());
   String y = String.valueOf(year());
   String theDate = "Chores for the week of "+ m +"/"+d+"/"+y;
   choreItems = loadFont("IrisUPC-25.vlw");
   fill(0);
   textFont(choreItems);
   text(theDate,500,70);
  }
