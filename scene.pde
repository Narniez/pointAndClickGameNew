 //Makes a scene with a name and image
//Adds and draws the objects to the scene 

class Scene {
  
  float xPos;
  float yPos;
  float imageHeight;
  float imageWidth;
  PImage backgroundImage;
  // create an object to add to the scene
  GameObject [] arrows;
  GameObject [] arrowBar;  
  GameObject [] arrowVW;
  
   Scene(float xPos, float yPos, float imageHeight, float imageWidth, PImage backgroundImage,GameObject[] arrows,GameObject [] arrowBar,GameObject[] arrowVW){
    this.xPos = xPos;
    this.yPos = yPos;
    this.imageHeight = imageHeight;
    this.imageWidth = imageWidth;
    this.backgroundImage = backgroundImage;
    this.arrows = arrows; 
    this.arrowVW = arrowVW;
    this.arrowBar = arrowBar;
  }
  
  
  
  void updateScene(){
    
    if(backgroundImage != null){
        image(backgroundImage,xPos,yPos);
    }  
    for(GameObject i : arrowBar){
      i.mouseMoved();
      i.draw();
      if(i.mouseIsHovering && mousePressed && currentScene == 0){
        currentScene = 2;   
      }
      else if(i.mouseIsHovering && mousePressed && currentScene == 2){
        currentScene = 0;
      }
    }    
    //draw the object and change current scene if you click on it 
    for(GameObject i : arrows){
      i.mouseMoved();
      i.draw();
      if(canGoToTent){
      if(i.mouseIsHovering && mousePressed && currentScene == 0){
        currentScene = 1;
      }
      else if(i.mouseIsHovering && mousePressed && currentScene == 1){
        currentScene = 0;
      }    
    }
    else if(i.mouseIsHovering) {
        textSize(20);
        text("Nope",1660,730);
    }
  }
    for(GameObject i : arrowVW ){
        i.mouseMoved();
        i.draw();
        if(canGoToVW){
        if(i.mouseIsHovering && mousePressed && currentScene == 0){
            currentScene = 3;
        }
        else if(i.mouseIsHovering && mousePressed && currentScene == 3) {
          currentScene = 0;
        }
      }  
      else if (i.mouseIsHovering){
        textSize(20);
        text("Can't go in here \n yet",700,700);
      }
    }
  }
}
