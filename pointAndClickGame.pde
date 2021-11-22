Scene scene01;
Scene scene02;

int currentScene; 


void setup(){
  size(1920,1080);
  
  
  currentScene = 0;
  scene01 = new Scene (0,0,height,width,loadImage("mainScene.png"),new GameObject[]{new GameObject("arrow1",200,200,200,200,"arrowRight.png")});
  scene02 = new Scene (0,0,height,width,loadImage("tentScene.png"),new GameObject[]{new GameObject("arrow1",200,200,200,200,"arrowDown.png")});


}

void draw(){
  if(currentScene == 0){
    scene01.updateScene();
  }
  else if(currentScene == 1){
    scene02.updateScene();
  }


}
