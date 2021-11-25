class dialogueMidnight {
  int startLines = 0;
  int cultistTentLines = 0;
  int perMouseClick = 0;
  int fireworkLines = 0;
  int cultist1Lines = 0;
  int cultist2Lines = 0;
  int cultist3Lines = 0;
  int flareGunLines = 0;
  int jerryCanLines = 0;
  
  int cultist1LinesChanged;
  int cultist2LinesChanged;
  int cultist3LinesChanged;
  
  int textXBeginScene = 200;
  int textYBeginScene = 1025;
  int textSizeBlackScreen = 45;
  int textColor = 255;
  
  int widthHippie = 100;
  int heigthHippie = 280;
  
  boolean canTalkToCultist = false;
  boolean endStartDialogue = false;
  boolean hasTalkedTent = false;
  
  void mouseClick(){
    if(isMidnight){
     startLines++;  
    }
    
    if(mouseX >= 1680 && mouseX <= 1680 + widthHippie && mouseY >= 570 && mouseY <= 570 + heigthHippie){
      cultistTentLines++;
    }
    
    if(hasTalkedTent){
      perMouseClick++;
    }
    if(hasFireworkBox &&  showsKeyInTent == false){
      fireworkLines++;
    }
    if(hasFireworkBox && showsKeyInTent == false && mouseX >= 100 && mouseX <= 100 + widthHippie && mouseY >= 710 && mouseY <= 710 + heigthHippie){
      cultist1Lines++;
    }
    if(hasFireworkBox && showsKeyInTent == false && mouseX >= 1020 && mouseX <= 1020 + widthHippie && mouseY >= 540 && mouseY <= 540 + heigthHippie){
      cultist2Lines++;
    }
    if(hasFireworkBox && showsKeyInTent == false && mouseX >= 1420 && mouseX <= 1420 + widthHippie && mouseY >= 650 && mouseY <= 650 + heigthHippie){
      cultist3Lines++;
    }
    if(hasFlareGun){
      flareGunLines++;
    }
    if(hasJerryCan){
      jerryCanLines++;
    }
    
    if(hasFlareGun == true && mouseX >= 100 && mouseX <= 100 + widthHippie && mouseY >= 710 && mouseY <= 710 + heigthHippie){
      cultist1LinesChanged++;
    }
    if(hasFlareGun == true && mouseX >= 1020 && mouseX <= 1020 + widthHippie && mouseY >= 540 && mouseY <= 540 + heigthHippie){
      cultist2LinesChanged++;
    }
    if(hasFlareGun == true && mouseX >= 1420 && mouseX <= 1420 + widthHippie && mouseY >= 650 && mouseY <= 650 + heigthHippie){
      cultist3LinesChanged++;
    }
  }
  
  void talkToCultist(){
   
    if(isMidnight){
      switch(cultistTentLines){
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
        hasTalkedTent = true;
        break; 
      }   
    }
    
    if(hasTalkedTent){
      switch(perMouseClick){
     case 1:
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        text("Those liars, they just want to stop me from seeing my friends.", textXBeginScene, textYBeginScene);
        image(john2, 50, 950);
        break;        
     case 2:
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        text(" I need to create a distraction to get my friends out.", textXBeginScene, textYBeginScene);
        image(john2, 50, 950);
        break;
     case 3:
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        text("I should also alert the authorities and look for a weapon", textXBeginScene, textYBeginScene);
        image(john2, 50, 950);
        break;
    case 4:
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        text("Let’s see what I can find.", textXBeginScene, textYBeginScene);
        image(john2, 50, 950);
        canGoToTent = true;
        break;     
      }
    }
    if(hasFireworkBox){
      switch(fireworkLines){
    case 1:
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        text("These would definitely send out a sigal.", textXBeginScene, textYBeginScene);
        image(john2, 50, 950);
        break;        
    case 2:
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        text(" It's also illegal to light fireworks right now.", textXBeginScene, textYBeginScene);
        image(john2, 50, 950);
        break;
    case 3:
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        text("The police will be sure to come.", textXBeginScene, textYBeginScene);
        image(john2, 50, 950);
        break; 
    case 4:
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        text("Now I just need something to light them with.", textXBeginScene, textYBeginScene);
        image(john2, 50, 950);
        break; 
     case 5:
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        text("I think I saw a flare gun in the bus.", textXBeginScene, textYBeginScene);
        image(john2, 50, 950);
        break;                 
      }
      switch(cultist1Lines){
    case 1:
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        text("Excuse me, do you know where the keys to the bus are?", textXBeginScene, textYBeginScene);
        image(john2, 50, 950);
        break;
    case 2:
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        text("You better stop interrupting my ritual. RIGHT NOW!", textXBeginScene, textYBeginScene);
        image(cultist1, 50, 950);
        break;  
     case 3:
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        text("Jesus, I am sorry man. Will ask somoene else.", textXBeginScene, textYBeginScene);
        image(john2, 50, 950);
        break;        
      }
      
      switch(cultist2Lines){
    case 1:
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        text("Excuse me, do you know where the keys to the bus are?", textXBeginScene, textYBeginScene);
        image(john2, 50, 950);
        break;
   case 2:
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        text("Are you blind? They are in the tent you were just in.", textXBeginScene, textYBeginScene);
        image(cultist2, 50, 950);
        break;
    case 3:
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        text("Oh! Really? Okay thanks man will take another look.", textXBeginScene, textYBeginScene);
        image(john2, 50, 950);
        break;
    case 4:
        showsKeyInTent = true;
        break;
      }
      switch(cultist3Lines){
    case 1:
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        text("Yooo, whats up man?", textXBeginScene, textYBeginScene);
        image(john2, 50, 950);
        break;
    case 2:
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        text("Just chillin, waiting for the sacrafice to happen.", textXBeginScene, textYBeginScene);
        image(cultist3, 50, 950);
        break;
    case 3:
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        text("Cool, cool, cool. Yeah totally man me too.", textXBeginScene, textYBeginScene);
        image(john2, 50, 950);
        break;
    case 4:
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        text("By the way, any idea where the keys to the bus might be?", textXBeginScene, textYBeginScene);
        image(john2, 50, 950);
        break;
   case 5:
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        text("Yoo, no idea man. But if you find them let me know", textXBeginScene, textYBeginScene);
        image(cultist3, 50, 950);
        break;
    case 6:
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        text("Yeah, for sure man.", textXBeginScene, textYBeginScene);
        image(john2, 50, 950);
        break;
      }
      
      switch(flareGunLines){
    case 1:
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        text("There it is.", textXBeginScene, textYBeginScene);
        image(john2, 50, 950);
        break;
        
    case 2:
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        text("Now I have everything I need for my distraction.", textXBeginScene, textYBeginScene);
        image(john2, 50, 950);
        break;
     case 3:
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        text("All I need now is to find a weapon.", textXBeginScene, textYBeginScene);
        image(john2, 50, 950);
        break;      
      }
      switch(jerryCanLines){
    case 1:
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        text("A jerry can full with fuel!", textXBeginScene, textYBeginScene);
        image(john2, 50, 950);
        break;
     case 2:
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        text("Don't really need it but sure I'll take it.", textXBeginScene, textYBeginScene);
        image(john2, 50, 950);
        break;
      }
      switch(cultist1LinesChanged){
     case 1:
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        text("Yo,question, if you were to beat someone up right now, what would you use as a weapon?", textXBeginScene, textYBeginScene);
        image(john2, 50, 950);
        break;
     case 2:
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        text("You again? Did I not tell you to stop interrupting me! GO AWAY!", textXBeginScene, textYBeginScene);
        image(cultist1, 50, 950);
        break;
     case 3:
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        text("Alright man relax, I thought you hippies were supposed to be chill.", textXBeginScene, textYBeginScene);
        image(john2, 50, 950);
        break;
      }
      switch(cultist2LinesChanged){
     case 1:
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        text("Yo,question, if you were to beat someone up right now, what would you use as a weapon?", textXBeginScene, textYBeginScene);
        image(john2, 50, 950);
        break;
     case 2:
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        text("We are peaceful people, man. Hippies don’t do things like that.", textXBeginScene, textYBeginScene);
        image(cultist2, 50, 950);
        break;
     case 3:
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        text("Yeah yeah, of course. You are right. ", textXBeginScene, textYBeginScene);
        image(john2, 50, 950);
        break;      
      }
      switch(cultist3LinesChanged){
    case 1:
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        text("Yo,question, if you were to beat someone up right now, what would you use as a weapon?", textXBeginScene, textYBeginScene);
        image(john2, 50, 950);
        break;
    case 3:
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        text("Not sure why you would even ask that to be honest.", textXBeginScene, textYBeginScene);
        image(cultist3, 50, 950);
        break;
    case 4:
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        text("But if I had to improvise, a broken bottle is not bad.", textXBeginScene, textYBeginScene);
        image(cultist3, 50, 950);
        break;
   case 5:
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        text("Just use one of the stones near the fire pit.", textXBeginScene, textYBeginScene);
        image(cultist3, 50, 950);
        break;
   case 6:
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        text("A broken bottle? Interesting answer.", textXBeginScene, textYBeginScene);
        image(john2, 50, 950);
        break;
      }
    }
  }

  void drawDialogueStart()
  {
    if(isMidnight){
      switch (startLines) {
      case 1: 
        //textSize(textSizeBlackScreen);
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        text("Yo, are you seeing this??", textXBeginScene, textYBeginScene);
        image(john2, 50, 950);
        break;
      case 2: 
        fill(0, 100);
        rect(0, 975, 1920, 100);
        textSize(textSizeBlackScreen);
        fill(textColor);
        text("This is not a party, it’s a cult meeting.", textXBeginScene, textYBeginScene);
        image(john2, 50, 950);
        break;
      case 3: 
        fill(0, 100);
        rect(0, 975, 1920, 100);
        textSize(textSizeBlackScreen);
        fill(textColor);
        text("We need to get out of here!!!", textXBeginScene, textYBeginScene);
        image(john2, 50, 950);
        break;
      case 4: 
        fill(0, 100);
        rect(0, 975, 1920, 100);
        textSize(textSizeBlackScreen);
        fill(textColor);
        text("Uhh, guys??", textXBeginScene, textYBeginScene);
        image(john2, 50, 950);
        break;
      case 5: 
        fill(0, 100);
        rect(0, 975, 1920, 100);
        textSize(textSizeBlackScreen);
        fill(textColor);
        text("Max? Daisy?", textXBeginScene, textYBeginScene);
        image(john2, 50, 950);
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
        image(john2, 50, 950);
        break;
      case 9:
        fill(0, 100);
        rect(0, 975, 1920, 100);
        textSize(textSizeBlackScreen);
        fill(textColor);
        text("I last saw them heading into the big tent on the right.", textXBeginScene, textYBeginScene);
        image(john2, 50, 950);
        break;
      case 10:
        fill(0, 100);
        rect(0, 975, 1920, 100);
        textSize(textSizeBlackScreen);
        fill(textColor);
        text("That must be where they’re keeping them.", textXBeginScene, textYBeginScene);
        image(john2, 50, 950);
        break;
      case 11:
        canTalkToCultist = true;
        endStartDialogue = true;
        break;
      }
    }
   }   
   
   
}
