class Collectable{

  private ArrayList<Collectable> collectables;
  
  float posX;
  float posY;
  float oWidth;
  float oHeight;
  PImage collectableImage;
  String name;

    Collectable(String name,float posX, float posY, float oWidth, float oHeight, PImage collectableImage){
      this.name = name;
      this.posX = posX;
      this.posY = posY;
      this.oWidth = oWidth;
      this.oHeight = oHeight;
      this.collectableImage = collectableImage;  
  }
  
  void draw(){
  }
  
}
