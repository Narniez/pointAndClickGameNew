 //Makes a scene with a name and image
//Adds and draws the objects to the scene 

class Scene {
  
  float xPos;
  float yPos;
  float imageHeight;
  float imageWidth;
  PImage backgroundImage;
  GameObject [] arrows;
  
   Scene(float xPos, float yPos, float imageHeight, float imageWidth, PImage backgroundImage,GameObject[] arrows){
    this.xPos = xPos;
    this.yPos = yPos;
    this.imageHeight = imageHeight;
    this.imageWidth = imageWidth;
    this.backgroundImage = backgroundImage;
    this.arrows = arrows;
  
  }
  
  
  void updateScene(){
    
    if(backgroundImage != null){
        image(backgroundImage,xPos,yPos);
    }  
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
