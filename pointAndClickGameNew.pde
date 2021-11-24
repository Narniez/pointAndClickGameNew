import gifAnimation.*;
PFont mono;
PImage jerryCan;
PImage wineBottle;
Scene scene01;
Scene scene02;
Scene scene03;
Scene scene04;
Gif hippie1;
Gif hippie2;
Gif hippie3;
Gif hippie4;
Gif hippie5;
Gif max;
Gif john;
Gif daisy;
//keeps track of the scenes
int currentScene; 

float jerryCanX = 800;
float jerryCanY = 560;
float jerryCanWidth = 460;
float jerryCanHeight = 360;

float wineBottleX = 400;
float wineBottleY = 400;
float wineBottleWidth = 400;
float wineBottleHeight = 400;

Dialogue dialogue1 = new Dialogue();
Inventory inventory1 = new Inventory();

boolean goToScene2 = false;
boolean goToScene3 = false;
boolean goToScene4 = false;
boolean midnightScene = false;
boolean hasJerryCan = false;
boolean hasWineBottle = false;
boolean canGoToVW = true;
boolean canGoToTent = true;
void setup(){
  size(1920,1080);
  //fullScreen();
  
  mono = createFont("yoster.ttf",50);
  
  jerryCan = loadImage("jerryCan.png");
  wineBottle = loadImage("wineBottle.png");
  
  //adds animation
  hippie1 = new Gif(this,"hippie1.gif");
  hippie1.play();
  
  hippie2 = new Gif(this,"hippie2.gif");
  hippie2.play();
  
  hippie3 = new Gif(this,"hippie3.gif");
  hippie3.play();
  
  hippie4 = new Gif(this,"hippie4.gif");
  hippie4.play();
  
  hippie5 = new Gif(this,"hippie5.gif");
  hippie5.play();
  
  max = new Gif(this,"max.gif");
  max.play();
  
  john = new Gif(this,"john1.gif");
  john.play();
  
  daisy = new Gif(this,"daisy.gif");
  daisy.play();
  
  currentScene = 0;
  // add a sene and the objects in it 
  scene01 = new Scene (0,0,height,width,loadImage("mainScene1.png"),
  new GameObject[]{new GameObject("arrow1",1660,730,70,70,"arrowRight.png")},
  new GameObject[]{new GameObject("arrowBar",1320,650,40,40,"arrowUp.png")},
  new GameObject[]{new GameObject("arrowVW",700,700,40,40,"arrowUp.png")});
  
  scene02 = new Scene (0,0,height,width,loadImage("tentScene.png"),
   new GameObject[]{new GameObject("arrow1",800,900,70,70,"arrowDown.png")},
   new GameObject[]{},
   new GameObject[]{});
   
   scene03 = new Scene(0,0,height,width,loadImage("barScene.png"),
   new  GameObject[]{},
   new GameObject[]{new GameObject("arrowBar",900,960,70,70,"arrowDown.png")},
   new GameObject[]{});
   
   scene04 = new Scene(0,0,height,width,loadImage("vwScene.png"),
   new GameObject[]{},
   new GameObject[]{},
   new GameObject[]{new GameObject("arrowVW",900,960,70,70,"arrowDown.png")});
}

void draw(){
  
   if (dialogue1.blackScreenHere)
  {
  background(0);
  
  dialogue1.drawDialogue();
  }
  
  if(dialogue1.blackScreenHere == false)
  {  
  if(currentScene == 0){
    scene01.updateScene();
    image(hippie1,870,510);
    image(hippie2,1080,670);
    image(hippie3,1560,600);
    image(hippie4,1230,490);
    image(hippie5,1750,590);
    image(max,300,670);
    image(john,100,600);
    image(daisy,200,580);
    }
  else if(currentScene == 1){
    scene02.updateScene();
    image(jerryCan,jerryCanX,jerryCanY,jerryCanWidth,jerryCanHeight);
      if(mouseX >= jerryCanX && mouseX <= jerryCanX + jerryCanWidth &&
       mouseY >= jerryCanY && mouseY <= jerryCanY + jerryCanHeight && mousePressed) {
        hasJerryCan = true;
     }
    }
    
    else if(currentScene == 2){
    scene03.updateScene();
    image(wineBottle,wineBottleX,wineBottleY,wineBottleWidth,wineBottleHeight);
    if(mouseX >= wineBottleX && mouseX <= wineBottleX + wineBottleWidth &&
       mouseY >= wineBottleY && mouseY <= wineBottleY + wineBottleHeight && mousePressed){
         hasWineBottle = true;
       }
  }
  else if(currentScene == 3){
    scene04.updateScene();
  }
    //dialogue1.locateObject();
    inventory1.drawInventory();
  }
  
  
  if(hasJerryCan){
    jerryCanX = 330;
    jerryCanY = 23;
    jerryCanWidth = 200;
    jerryCanHeight = 140;
    image(jerryCan,jerryCanX,jerryCanY,jerryCanWidth,jerryCanHeight);
  }
  
  if(hasWineBottle){
    wineBottleX = 100;
    wineBottleY = 30;
    wineBottleWidth = 200;
    wineBottleHeight = 140;
    image(wineBottle,wineBottleX,wineBottleY,wineBottleWidth,wineBottleHeight);
  }
   if (dialogue1.beginOfDialogueFirstScene == true)
      {
        dialogue1.drawDialogueFirstScene();  
       }
}


void mouseClicked() {
  dialogue1.mouseClick();
}
