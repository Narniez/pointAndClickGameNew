import gifAnimation.*;


PImage jerryCan;

Scene scene01;
Scene scene02;
Gif myAnimation;

//keeps track of the scenes
int currentScene; 

Dialogue dialogue1 = new Dialogue();
Inventory inventory1 = new Inventory();

boolean goToScene2 = false;
boolean hasJerryCan = false;
void setup(){
  size(1920,1080);
  //adds animation
  jerryCan = loadImage("jerryCan.png");
  myAnimation = new Gif(this,"hippiesSprites.gif");
  myAnimation.play();
  
  currentScene = 0;
  // add a sene and the objects in it 
  scene01 = new Scene (0,0,height,width,loadImage("mainScene.png"),
  new GameObject[]{new GameObject("arrow1",100,100,200,200,"arrowRight.png")},
  new GameObject[]{new GameObject("joint",1500,200,100,100,"joint.png")},
  new GameObject[]{});
  
  scene02 = new Scene (0,0,height,width,loadImage("tentScene.png"),
   new GameObject[]{new GameObject("arrow1",400,400,200,200,"arrowDown.png")},
   new GameObject[]{new GameObject("jerryCan",200,500,200,200,"jerryCan.png")},
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
    image(myAnimation,200,200);
    }
  else if(currentScene == 1){
    scene02.updateScene();
    }
     dialogue1.timer();
    dialogue1.locateObject();
    inventory1.drawInventory();
  }
}

void mouseClicked() {
  dialogue1.mouseClick();
  if (dialogue1.blackScreenHere == false)
  {
  dialogue1.mouseClickInteractions();
  }
}
