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
  GameObject [] arrowTent;
  
   Scene(float xPos, float yPos, float imageHeight, float imageWidth, PImage backgroundImage,GameObject[] arrows,GameObject [] arrowBar,GameObject[] arrowVW,GameObject [] arrowTent){
    this.xPos = xPos;
    this.yPos = yPos;
    this.imageHeight = imageHeight;
    this.imageWidth = imageWidth;
    this.backgroundImage = backgroundImage;
    this.arrows = arrows; 
    this.arrowBar = arrowBar;
    this.arrowVW = arrowVW;
    this.arrowTent = arrowTent;
  }
  
  
  
  void updateScene(){
    
    if(backgroundImage != null){
        image(backgroundImage,xPos,yPos);
    }  
    for(GameObject i : arrowBar){
      i.mouseMoved();
      i.draw();
      if(canGoToBar){
      if(i.mouseIsHovering && mousePressed && currentScene == 0){
        currentScene = 2;   
      }
      else if(i.mouseIsHovering && mousePressed && currentScene == 2){
        currentScene = 0;
      }
    }  
     else if(i.mouseIsHovering){
        textSize(20);
        text("The Hippie in front \n won't let you enter",1340,650);
   }
 }
    //draw the object and change current scene if you click on it 
    for(GameObject i : arrows){
      i.mouseMoved();
      i.draw();
      if(canGoToTent){
      if(i.mouseIsHovering && mousePressed && currentScene == 4){
        currentScene = 1;
      }
      else if(i.mouseIsHovering && mousePressed && currentScene == 1){
        currentScene = 4;
      }    
    }
    else if(i.mouseIsHovering) {
        textSize(20);
        text("I should check out the big tent first.",860,860);
    }
  }
    for(GameObject i : arrowVW ){
        i.mouseMoved();
        i.draw();
        if(canGoToVW && hasBusKey){
        if(i.mouseIsHovering && mousePressed && currentScene == 4){
            currentScene = 3;
        }
        else if(i.mouseIsHovering && mousePressed && currentScene == 3) {
          currentScene = 4;
        }
      }  
      else if (i.mouseIsHovering){
        textSize(20);
        text("I need keys to \n go in here ",700,700);
      }
    }
    for(GameObject i : arrowTent){
      i.mouseMoved();
      i.draw();
      if(i.mouseIsHovering){
        textSize(20);
        text("Can't go in here yet.",1600,850);
      }
    }
  }
}
