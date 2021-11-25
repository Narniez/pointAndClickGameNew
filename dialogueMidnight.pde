class dialogueMidnight {
  int perMouseClick = 0;
  int perMouseClick1 = 0;
  
  int textXBeginScene = 200;
  int textYBeginScene = 1025;
  int textSizeBlackScreen = 45;
  int textColor = 255;
  
  int widthHippie = 100;
  int heigthHippie = 280;
  
  boolean canTalkToCultist = false;
  boolean endStartDialogue = false;
  
  void mouseClick(){
    if(isMidnight){
     perMouseClick++;  
    }
    
    if(mouseX >= 1680 && mouseX <= 1680 + widthHippie && mouseY >= 570 && mouseY <= 570 + heigthHippie){
      perMouseClick1++;
    }
  }
  
  void talkToCultist(){
   
    if(isMidnight){
      switch(perMouseClick1){
        case 1:
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        text("Hey, man can I go in?", textXBeginScene, textYBeginScene);
        image(john, 50, 950);
        break;
        
        case 2:
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        text("We’re not letting you in, it's too crowded inside.", textXBeginScene, textYBeginScene);
        image(cultist4, 50, 950);
        break; 
      }   
    }
  }

  void drawDialogueStart()
  {
    if(isMidnight){
      switch (perMouseClick) {
      case 1: 
        //textSize(textSizeBlackScreen);
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        text("Yo, are you seeing this??", textXBeginScene, textYBeginScene);
        image(john, 50, 950);
        break;
      case 2: 
        fill(0, 100);
        rect(0, 975, 1920, 100);
        textSize(textSizeBlackScreen);
        fill(textColor);
        text("This is not a party, it’s a cult meeting.", textXBeginScene, textYBeginScene);
        image(john, 50, 950);
        break;
      case 3: 
        fill(0, 100);
        rect(0, 975, 1920, 100);
        textSize(textSizeBlackScreen);
        fill(textColor);
        text("We need to get out of here!!!", textXBeginScene, textYBeginScene);
        image(john, 50, 950);
        break;
      case 4: 
        fill(0, 100);
        rect(0, 975, 1920, 100);
        textSize(textSizeBlackScreen);
        fill(textColor);
        text("Uhh, guys??", textXBeginScene, textYBeginScene);
        image(john, 50, 950);
        break;
      case 5: 
        fill(0, 100);
        rect(0, 975, 1920, 100);
        textSize(textSizeBlackScreen);
        fill(textColor);
        text("Max? Daisy?", textXBeginScene, textYBeginScene);
        image(john, 50, 950);
        break;
      case 6: 
        fill(0, 100);
        rect(0, 975, 1920, 100);
        textSize(textSizeBlackScreen);
        fill(textColor);
        text("Your friends are no longer next to you.You frantically look around.", textXBeginScene, textYBeginScene);
        break;
      case 7: 
        fill(0, 100);
        rect(0, 975, 1920, 100);
        textSize(textSizeBlackScreen);
        fill(textColor);
        text("Suddenly, you spot them entering a tent.", textXBeginScene, textYBeginScene);
        break;
      case 8: 
        fill(0, 100);
        rect(0, 975, 1920, 100);
        textSize(textSizeBlackScreen);
        fill(textColor);
        text("The cult must have kidnapped my friends. I need to save them!", textXBeginScene, textYBeginScene);
        image(john, 50, 950);
        break;
      case 9:
        fill(0, 100);
        rect(0, 975, 1920, 100);
        textSize(textSizeBlackScreen);
        fill(textColor);
        text("I last saw them heading into the big tent on the right.", textXBeginScene, textYBeginScene);
        image(john, 50, 950);
        break;
      case 10:
        fill(0, 100);
        rect(0, 975, 1920, 100);
        textSize(textSizeBlackScreen);
        fill(textColor);
        text("That must be where they’re keeping them.", textXBeginScene, textYBeginScene);
        image(john, 50, 950);
        break;
      case 11:
        canTalkToCultist = true;
        endStartDialogue = true;
        break;
      }
    }
   }   
   
   
}
