class Collectable{

  public float jerryCanX;
  public float jerryCanY;
  public float jerryCanWidth = 100;
  public float jerryCanHeight = 100;
  PImage jerryCan;
  Collectable collectable[];
  
 
   Collectable(PImage jerryCan,Collectable collectableJerryCan[]){     
     
     this.jerryCan = jerryCan;
     this.collectable = collectableJerryCan;
   }
 
  public void mouseMoved(){
    if(mouseX >= jerryCanX && mouseX <= jerryCanX + jerryCanWidth &&
       mouseY >= jerryCanY && (mouseY <= jerryCanY + jerryCanHeight) && mousePressed) {
        hasJerryCan = true;
     }
  }
 public void updateJerryCan(){
     
   if(hasJerryCan == false){       
     jerryCanX = 500;
     jerryCanY = 200;
   }
   else if(hasJerryCan){
     jerryCanX = 800;
     jerryCanY = 10;
   }   
   
   image(jerryCan,jerryCanX,jerryCanY,100,100);
 }  
}
