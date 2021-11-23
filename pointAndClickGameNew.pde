import gifAnimation.*;
PFont mono;
PImage jerryCan;
Scene scene01;
Scene scene02;
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
float jerryCanX = 500;
float jerryCanY = 200;
float jerryCanWidth = 100;
float jerryCanHeight = 100;

Dialogue dialogue1 = new Dialogue();
Inventory inventory1 = new Inventory();
boolean goToScene2 = false;
boolean hasJerryCan = false;
void setup(){
  size(1920,1080);
  
  mono = createFont("yoster.ttf",50);
  
  jerryCan = loadImage("jerryCan.png");
  
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
  new GameObject[]{},
  new GameObject[]{});
  
  scene02 = new Scene (0,0,height,width,loadImage("tentScene.png"),
   new GameObject[]{new GameObject("arrow1",400,400,200,200,"arrowDown.png")},
   new GameObject[]{},
   new GameObject[]{});
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
     if(hasJerryCan){
      image(jerryCan,jerryCanX,jerryCanY,jerryCanWidth,jerryCanHeight);
  }
    }
  else if(currentScene == 1){
    scene02.updateScene();
    image(jerryCan,jerryCanX,jerryCanY,jerryCanWidth,jerryCanHeight);
      if(mouseX >= jerryCanX && mouseX <= jerryCanX + jerryCanWidth &&
       mouseY >= jerryCanY && mouseY <= jerryCanY + jerryCanHeight && mousePressed) {
        hasJerryCan = true;
     }
    }
     dialogue1.timer();
    dialogue1.locateObject();
    inventory1.drawInventory();
  }
  
  if(hasJerryCan){
    jerryCanX = 800;
    jerryCanY = 50;
  }
  
}

void mouseClicked() {
  dialogue1.mouseClick();
  if (dialogue1.blackScreenHere == false)
  {
  dialogue1.mouseClickInteractions();
  }
}
