import processing.sound.*;

import gifAnimation.*;
PFont mono;
PImage jerryCan;
PImage wineBottle;
PImage fireworkBox;
PImage flareGun;
PImage busKey;
PImage brokenBottle;
PImage rock;
Scene scene01;
Scene scene02;
Scene scene03;
Scene scene04;
Scene scene05;
Gif hippie1;
Gif hippie2;
Gif hippie3;
Gif hippie4;
Gif hippie5;
Gif cultist1;
Gif cultist2;
Gif cultist3;
Gif cultist4;
Gif cultist5;
Gif max;
Gif john;
Gif daisy;
Gif john2;
//keeps track of the scenes
int currentScene; 

float jerryCanX = 100;
float jerryCanY = 700;
float jerryCanWidth = 460;
float jerryCanHeight = 400;

float wineBottleX = 300;
float wineBottleY = 400;
float wineBottleWidth = 500;
float wineBottleHeight = 400;

float fireworkBoxX = 350;
float fireworkBoxY = 670;
float fireworkBoxWidth = 350;
float fireworkBoxHeight = 350;

float flareGunX = 1400;
float flareGunY = 870;
float flareGunWidth = 300;
float flareGunHeight = 200;

float busKeyX = 450;
float busKeyY = 930;
float busKeyWidth = 150;
float busKeyHeight = 100;

float brokenBottleX;
float brokenBottleY;
float brokenBottleWidth;
float brokenBottleHeight;

float rockX = 1320;
float rockY = 790;
float rockWidth = 80;
float rockHeight = 80;

Dialogue dialogue1 = new Dialogue();
dialogueMidnight dialogueMidnight1 = new dialogueMidnight();
Inventory inventory1 = new Inventory();

boolean goToScene2 = false;
boolean goToScene3 = false;
boolean goToScene4 = false;
boolean midnightScene = false;
boolean hasJerryCan = false;
boolean hasWineBottle = false;
boolean hasFireworkBox = false;
boolean hasFlareGun = false;
boolean hasRock = false;
boolean hasBrokenBottle = false;
boolean canGoToVW = true;
boolean canGoToTent = true;
boolean canGoToBar = false;
boolean isMidnight = false;
boolean showsKeyInTent = false;
boolean hasBusKey = false;
boolean isOverFireWorkBox = false;
int playMusic = 0;
int playBadMusic = 0;

SoundFile partyMusic;
SoundFile satanMusic;
SoundFile pickupSound;
void setup(){
  size(1920,1080);
  //fullScreen();
  
  //currentScene = 0;
  currentScene = 0;
  mono = createFont("yoster.ttf",50);
  
  jerryCan = loadImage("gasCan.png");
  wineBottle = loadImage("wineBottle.png");
  fireworkBox = loadImage("fireworks.png");
  flareGun = loadImage("flareGun1.png");
  busKey = loadImage("busKey.png");
  brokenBottle = loadImage("brokenBottle.png");
  rock = loadImage("rock1.png");
  
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
  
  cultist1 = new Gif(this,"cultist1.gif");
  cultist1.play();  
  cultist2 = new Gif(this,"cultist2.gif");
  cultist2.play();  
  cultist3 = new Gif(this,"cultist3.gif");
  cultist3.play();  
  cultist4 = new Gif(this,"cultist4.gif");
  cultist4.play();
  cultist5 = new Gif(this,"cultist5.gif");
  cultist5.play();
  
  
  
  
  max = new Gif(this,"max.gif");
  max.play();
  
  john = new Gif(this,"john1.gif");
  john.play();
  john2 = new Gif(this,"john2.gif");
  john2.play();
  
  daisy = new Gif(this,"daisy.gif");
  daisy.play();
  
  partyMusic = new SoundFile(this,"soundParty2.mp3");
  satanMusic = new SoundFile(this,"soundBad.wav");
  pickupSound = new SoundFile(this,"pickupSound.wav");
  
  // add a sene and the objects in it 
  scene01 = new Scene (0,0,height,width,loadImage("mainScene1.png"),
  new GameObject[]{},
  new GameObject[]{new GameObject("arrowBar",1320,650,40,40,"arrowUp.png")},
  new GameObject[]{/*new GameObject("arrowVW",700,700,40,40,"arrowUp.png")*/},
  new GameObject[]{});
  
  scene02 = new Scene (0,0,height,width,loadImage("tentScene1.png"),
   new GameObject[]{new GameObject("arrow1",800,960,70,70,"arrowDown.png")},
   new GameObject[]{},
   new GameObject[]{},
   new GameObject[]{});
   
   scene03 = new Scene(0,0,height,width,loadImage("barScene2.png"),
   new  GameObject[]{},
   new GameObject[]{new GameObject("arrowBar",900,960,70,70,"arrowDown.png")},
   new GameObject[]{},
   new GameObject[]{});
   
   scene04 = new Scene(0,0,height,width,loadImage("busScene2.png"),
   new GameObject[]{},
   new GameObject[]{},
   new GameObject[]{new GameObject("arrowVW",900,960,70,70,"arrowDown.png")},
   new GameObject[]{});
   
   scene05 = new Scene(0,0,height,width,loadImage("mainScene2.png"),
   new GameObject[]{new GameObject("arrow1",980,760,40,40,"arrowUp.png")},
   new GameObject[]{},
   new GameObject[]{new GameObject("arrowVW",700,700,40,40,"arrowUp.png")},
   new GameObject[]{new GameObject("arrowTent",1660,750,50,50,"arrowRight.png")});
   
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
    playMusic++;
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
      image(fireworkBox,fireworkBoxX,fireworkBoxY,fireworkBoxWidth,fireworkBoxHeight);
      if(mouseX >= fireworkBoxX && mouseX <= fireworkBoxX + fireworkBoxWidth &&
         mouseY >= fireworkBoxY && mouseY <= fireworkBoxY + fireworkBoxHeight){
           text("This will for sure cause a distraction. Only if i had something to light it with.", 200, 950);
           image(john, 50, 850);
         }  
      if(mouseX >= fireworkBoxX && mouseX <= fireworkBoxX + fireworkBoxWidth &&
         mouseY >= fireworkBoxY && mouseY <= fireworkBoxY + fireworkBoxHeight && mousePressed){
        pickupSound.play();
        hasFireworkBox = true;
       }  
       if(showsKeyInTent){
         image(busKey,busKeyX,busKeyY,busKeyWidth,busKeyHeight);
         if(mouseX >= busKeyX && mouseX <= busKeyX + busKeyWidth &&
            mouseY >= busKeyY && mouseY <= busKeyY + busKeyHeight){
          text("How did I not see this earlier?", 200, 950);
          image(john, 50, 850);
       }
      if(mouseX >= busKeyX && mouseX <= busKeyX + busKeyWidth &&
       mouseY >= busKeyY && mouseY <= busKeyY + busKeyHeight && mousePressed){
         pickupSound.play();
         hasBusKey = true;
       }  
       }
    }
    
    else if(currentScene == 2){
    scene03.updateScene();
    image(wineBottle,wineBottleX,wineBottleY,wineBottleWidth,wineBottleHeight);
    if(mouseX >= wineBottleX && mouseX <= wineBottleX + wineBottleWidth &&
       mouseY >= wineBottleY && mouseY <= wineBottleY + wineBottleHeight){
         text("A bottle of wine, Nice! Wait, it hasn’t been opened yet. Awh man, gotta find a corkscrew.", 200, 950);
        image(john, 50, 850);
       }
    if(mouseX >= wineBottleX && mouseX <= wineBottleX + wineBottleWidth &&
       mouseY >= wineBottleY && mouseY <= wineBottleY + wineBottleHeight && mousePressed){
         pickupSound.play();
         hasWineBottle = true;
       }
  }
  else if(currentScene == 3){
    scene04.updateScene();
    image(jerryCan,jerryCanX,jerryCanY,jerryCanWidth,jerryCanHeight);
      if(mouseX >= jerryCanX && mouseX <= jerryCanX + jerryCanWidth &&
       mouseY >= jerryCanY && mouseY <= jerryCanY + jerryCanHeight && mousePressed) {
        pickupSound.play();
        hasJerryCan = true;
     }
     
     image(flareGun,flareGunX,flareGunY,flareGunWidth,flareGunHeight);
     if(mouseX >= flareGunX && mouseX <= flareGunX + flareGunWidth &&
       mouseY >= flareGunY && mouseY <= flareGunY + flareGunHeight && mousePressed) {
        pickupSound.play();
        hasFlareGun = true;
       }
  }
  
  if(currentScene == 4){
    playBadMusic++;
    scene05.updateScene();
    image(cultist1, 100, 700);
    image(cultist2, 1020,540);
    image(cultist3, 1420,650);
    image(cultist4, 1570,480);
    image(cultist5, 1680,550);
    image(john2, 735,720);
    image(rock,rockX,rockY,rockWidth,rockHeight);
    if(mouseX >= rockX && mouseX <= rockX + flareGunWidth &&
       mouseY >= rockY && mouseY <= rockY + rockHeight && mousePressed) {
        hasBrokenBottle = true;
       }       
    }
        if(playMusic == 1 && (currentScene == 0 || currentScene == 1)){
    partyMusic.loop(1,0.05);
  }
  
  if(playBadMusic == 1 && (currentScene == 4 || currentScene == 2 || currentScene == 3)){
    satanMusic.loop(1,0.05);
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
    wineBottleX = -30;
    wineBottleY = 30;
    wineBottleWidth = 200;
    wineBottleHeight = 140;
    image(wineBottle,wineBottleX,wineBottleY,wineBottleWidth,wineBottleHeight);
  }
  
  if(hasFireworkBox){
    fireworkBoxX = 125;
    fireworkBoxY = 30;
    fireworkBoxWidth = 130;
    fireworkBoxHeight = 120;
    image(fireworkBox,fireworkBoxX,fireworkBoxY,fireworkBoxWidth,fireworkBoxHeight);
  }
  
  if(hasFlareGun){
    flareGunX = 480;
    flareGunY = 25;
    flareGunWidth = 130;
    flareGunHeight = 130;
    image(flareGun,flareGunX,flareGunY,flareGunWidth,flareGunHeight);
  }
  if(hasBusKey){
    busKeyX = 240;
    busKeyY = 25;
    busKeyWidth = 130;
    busKeyHeight = 130;
    image(busKey,busKeyX,busKeyY,busKeyWidth,busKeyHeight);
  
  }
  
  if(hasBrokenBottle){
    brokenBottleX = 480;
    brokenBottleY = 25;
    brokenBottleWidth = 130;
    brokenBottleHeight = 130;
    rockX = 2000;
    rockY = 2000;
    image(brokenBottle,brokenBottleX,brokenBottleY,brokenBottleWidth,brokenBottleHeight);
  }
   if (dialogue1.beginOfDialogueFirstScene == true)
      {
        dialogue1.drawDialogueFirstScene();  
      } 
   dialogueMidnight1.drawDialogueStart();
   dialogueMidnight1.talkToCultist();
   dialogue1.hippieTalk();
}

void mouseClicked() {
  
  dialogue1.mouseClick();
  dialogueMidnight1.mouseClick();
}
