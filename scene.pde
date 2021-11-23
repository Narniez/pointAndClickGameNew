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
  GameObject [] joint;  
  GameObject [] jerryCan;
  
   Scene(float xPos, float yPos, float imageHeight, float imageWidth, PImage backgroundImage,GameObject[] arrows,GameObject [] joint,GameObject[] jerryCan){
    this.xPos = xPos;
    this.yPos = yPos;
    this.imageHeight = imageHeight;
    this.imageWidth = imageWidth;
    this.backgroundImage = backgroundImage;
    this.arrows = arrows;
    this.joint = joint; 
    this.jerryCan = jerryCan;
  }
  
  
  
  void updateScene(){
    
    if(backgroundImage != null){
        image(backgroundImage,xPos,yPos);
    }  
    for(GameObject i : joint){
      i.mouseMoved();
      i.draw();
      if(i.mouseIsHovering && mousePressed){
        goToScene2 = true;   
      }     
    }    
    //draw the object and change current scene if you click on it 
    for(GameObject i : arrows){
      i.mouseMoved();
      i.draw();
      if(i.mouseIsHovering && mousePressed && currentScene == 0){
        currentScene = 1;
      }
      else if(i.mouseIsHovering && mousePressed && currentScene == 1){
        currentScene = 0;
      }
    }
  }
}
