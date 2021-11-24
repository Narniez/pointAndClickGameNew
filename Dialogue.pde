class Dialogue
{
  //variables for black begin screen, text and clicksystem
  int textSizeBlackScreen = 45;
  int textXBlackScreen = 175;
  int textYBlackScreen = 550; 
  int textColor = 255;
  int perMouseClick = 0;
  int perMouseClick2 = 0;
  int perMouseClick3 = 0;
  boolean blackScreenHere = true;

  //variables for drawDialogueFirstScene
  boolean watermission = false;
  boolean beginOfDialogueFirstScene = true;
  int textXBeginScene = 200;
  int textYBeginScene = 1025;

  //variables for interacting with objects
  int jointX = 800; //120
  int jointY = 800; //100
  int wineBottleX = 975;
  int wineBottleY = 300 ;
  boolean foundWineBottle = false;
  boolean foundJoint = false;
  boolean goOverJoint = false;
  boolean goOverWineBottle = false;
  //tells you if you are in mainscene or not
  boolean mainSceneInteract = true;
  boolean arrowToSecondScene = false;
  int arrowToFirstSceneX = 800;
  int arrowToFirstSceneY = 900;
  int arrowToSecondSceneX = 1600;
  int arrowToSecondSceneY = 800;
  //timer variables
  int startTime;
  int timerdelay = 3;
  int seconds;
  int millis;
  boolean interactionObject= false;
  //text allign
  int textObjectX = 30;
  int textObjectY = 1035;
  int widthHippie = 100;
  int heigthHippie = 280;



  //interacting with hippies
  boolean allowingToTalkToHippie = false;
  boolean talkingToHippiesWater = false;
  boolean talkHippie1 = false;
  boolean  talkHippie2 = false;
  boolean  talkHippie3 = false;
  boolean talkHippie4 = false;
  boolean talkHippie5 = false;
  int textXTalkingHippie2Line= 200;
  int textYTalkingHippie2Line = 1000;
  int textSizeTalkingHippie2Line= 30;
  int textSizeTalkingHippie1Line= 35;

  int textXTalkingHippie1Line = 200;
  int textYTalkingHippie1Line = 1025;

  void hippieTalk()
  {
    //text lines of hippie 2

    //when watermission is active
 
      //text lines of hippie 1
      if (talkHippie1 && talkingToHippiesWater)
      {
        switch(perMouseClick3)
        {
        case 1:
          fill(0, 100);
          rect(0, 975, 1920, 100); 
          fill(textColor);
          textFont(mono);
          textSize (textSizeTalkingHippie1Line);
          text("Hey man, do you know where I can find some water?", textXTalkingHippie1Line, textYTalkingHippie1Line);
          image(john, 50, 950);
          break;
        case 2: 
          fill(0, 100);
          rect(0, 975, 1920, 100); 
          fill(textColor);
          textFont(mono);
          textSize (textSizeTalkingHippie1Line);
          text("You should find that in the drinking booth, obviously.", textXTalkingHippie1Line, textYTalkingHippie1Line);
          image(hippie1, 50, 950);
          break;
        case 3: 
          perMouseClick3 = 0;
          talkHippie1 = false;
          break;
        }
      }

      //text lines of hippie 2
      if (talkHippie2 && talkingToHippiesWater)
      {
        switch(perMouseClick3)
        {
        case 1:
          fill(0, 100);
          rect(0, 975, 1920, 100); 
          fill(textColor);
          textFont(mono);
          textSize (textSizeTalkingHippie1Line);
          text("Hey man, do you know where I can find some water?", textXTalkingHippie1Line, textYTalkingHippie1Line);
          image(john, 50, 950);
          break;
        case 2: 
          fill(0, 100);
          rect(0, 975, 1920, 100); 
          fill(textColor);
          textFont(mono);
          textSize (textSizeTalkingHippie1Line);
          text("You should find that in the drinking booth, obviously.", textXTalkingHippie1Line, textYTalkingHippie1Line);        
          image(hippie2, 50, 950);        
          break;
        case 3: 
          perMouseClick3 = 0;
          talkHippie2 = false;
          break;
        }
      }

      //textlines of hippie 3
      if (talkHippie3 && watermission)
      { 
        switch(perMouseClick3)
        {
        case 1:
          fill(0, 100);
          rect(0, 975, 1920, 100); 
          fill(textColor);
          textFont(mono);
          textSize (textSizeTalkingHippie1Line);
          text("Hey, can I maybe grab myself a drink?", textXTalkingHippie1Line, textYTalkingHippie1Line);
          image(john, 50, 950);
          break;
        case 2: 
          fill(0, 100);
          rect(0, 975, 1920, 100); 
          fill(textColor);
          textFont(mono);
          textSize (textSizeTalkingHippie2Line);
          text(" Nah man, the booth isn’t open right now. I’m too high to be dealing with people right now. \n Maybe if I had some water, I would feel better.", textXTalkingHippie2Line, textYTalkingHippie2Line);
          image(hippie4, 50, 915);
          break;
        case 3: 
          perMouseClick3 = 0;
          talkingToHippiesWater = true;
          talkHippie3 = false;
          break;
        }
      }
      //text lines of hippie 4
      if (talkHippie4 && talkingToHippiesWater)
      {
        switch(perMouseClick3)
        {
        case 1:
          fill(0, 100);
          rect(0, 975, 1920, 100); 
          fill(textColor);
          textFont(mono);
          textSize (textSizeTalkingHippie1Line);
          text("Hey man, do you know where I can find some water?", textXTalkingHippie1Line, textYTalkingHippie1Line);
          image(john, 50, 950);
          break;
        case 2: 
          fill(0, 100);
          rect(0, 975, 1920, 100); 
          fill(textColor);
          textFont(mono);
          textSize (textSizeTalkingHippie1Line);
          text("You should find that in the drinking booth, obviously.", textXTalkingHippie1Line, textYTalkingHippie1Line);        
          image(hippie3, 50, 950);        
          break;
        case 3: 
          perMouseClick3 = 0;
          talkHippie4 = false;
          break;
        }
      }
      
      //text lines of hippie 5
      if (talkHippie5 && talkingToHippiesWater)
      {
        switch(perMouseClick3)
        {
        case 1:
          fill(0, 100);
          rect(0, 975, 1920, 100); 
          fill(textColor);
          textFont(mono);
          textSize (textSizeTalkingHippie1Line);
          text("Hey man, do you know where I can find some water?", textXTalkingHippie1Line, textYTalkingHippie1Line);
          image(john, 50, 950);
          break;
        case 2: 
          fill(0, 100);
          rect(0, 975, 1920, 100); 
          fill(textColor);
          textFont(mono);
          textSize (textSizeTalkingHippie1Line);
          text("You should find that in the drinking booth, obviously.", textXTalkingHippie1Line, textYTalkingHippie1Line);        
          image(hippie5, 50, 950);        
          break;
        case 3: 
          perMouseClick3 = 0;
          talkHippie5 = false;
          break;
        }
      }
    
  }


  //under here is the code for the beginning screen, text and mouseclick
  void mouseClick()
  {
    //everythime when mouseclicked, the variable ++
    if (blackScreenHere)
    {
      perMouseClick++;
    }
    if (beginOfDialogueFirstScene && blackScreenHere == false)
    {
      perMouseClick2++;
    }
    if (mouseX >= 1750 && mouseX <= 1750 + widthHippie && mouseY >= 590 && mouseY <= 590 + heigthHippie && currentScene == 0 && allowingToTalkToHippie == true )
    {
      perMouseClick3++;
      talkHippie5 = true;
    }
    if (mouseX >= 1560 && mouseX <= 1560 + widthHippie && mouseY >= 600 && mouseY <= 600 + heigthHippie && currentScene == 0 && allowingToTalkToHippie == true )
    {
      perMouseClick3++;
      talkHippie4 = true;
    }
    if (mouseX >= 1230 && mouseX <= 1230 + widthHippie && mouseY >= 490 && mouseY <= 490 + heigthHippie && currentScene == 0 && allowingToTalkToHippie == true )
    {
      perMouseClick3++;
      talkHippie3 = true;
    }
    if (mouseX >= 1080 && mouseX <= 1080 + widthHippie && mouseY >= 670 && mouseY <= 670 + heigthHippie && currentScene == 0 && allowingToTalkToHippie == true)
    {
      perMouseClick3++;
      talkHippie2 = true;
    }
    if (mouseX >= 870 && mouseX <= 870 + widthHippie && mouseY >= 510 && mouseY <= 510 + heigthHippie && currentScene == 0 && allowingToTalkToHippie == true)
    {
      perMouseClick3++;
      talkHippie1 = true;
    }
  }


  void drawDialogueFirstScene()
  {
    {
      switch (perMouseClick2) {
      case 1: 
        //textSize(textSizeBlackScreen);
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        text(" Max: Yo, this party doesn’t totally suck after all.", textXBeginScene, textYBeginScene);
        image(max, 50, 950);
        break;
      case 2: 
        fill(0, 100);
        rect(0, 975, 1920, 100);
        textSize(textSizeBlackScreen);
        fill(textColor);
        text("Daisy: I guess the hippies got cooler, huh?", textXBeginScene, textYBeginScene);
        image(daisy, 50, 950);
        break;
      case 3: 
        fill(0, 100);
        rect(0, 975, 1920, 100);
        textSize(textSizeBlackScreen);
        fill(textColor);
        text("Player: Seems like it.", textXBeginScene, textYBeginScene);
        image(john, 50, 950);
        break;
      case 4: 
        fill(0, 100);
        rect(0, 975, 1920, 100);
        textSize(textSizeBlackScreen);
        fill(textColor);
        text("Daisy: Alright guys, now that we’re here let’s have some fun!", textXBeginScene, textYBeginScene);
        image(daisy, 50, 950);
        break;
      case 5: 
        fill(0, 100);
        rect(0, 975, 1920, 100);
        textSize(textSizeBlackScreen);
        fill(textColor);
        text("Player: Hell yeah!", textXBeginScene, textYBeginScene);
        image(john, 50, 950);
        break;
      case 6: 
        fill(0, 100);
        rect(0, 975, 1920, 100);
        textSize(textSizeBlackScreen);
        fill(textColor);
        text("Max: Last one to get a drink is a loser!!!", textXBeginScene, textYBeginScene);
        image(max, 50, 950);
        break;
      case 7: 
        watermission = true;
        allowingToTalkToHippie = true;
        beginOfDialogueFirstScene = false;
        break;
      }
    }
  }



  // looks what number variable is at and displays that case, dialogue in beginning (black screen)
  void drawDialogue()
  {
    switch (perMouseClick) {
    case 1: 
      //textSize(textSizeBlackScreen);
      fill(textColor);
      textFont(mono);
      text(" It’s a nice Friday afternoon and school is finally over \n for the week. You and your best friends are walking home \n and making plans for the  evening when, suddenly, \n one of your friends notices something...", textXBlackScreen, textYBlackScreen);
      break;
    case 2: 
      textSize(textSizeBlackScreen);
      fill(textColor);
      text("Max: Yo guys look at this poster, the hippies are throwing a party \n tonight.", textXBlackScreen, textYBlackScreen);
      break;
    case 3: 
      textSize(textSizeBlackScreen);
      fill(textColor);
      text("Daisy: No way are they still here, I thought they left?", textXBlackScreen, textYBlackScreen);
      break;
    case 4: 
      textSize(textSizeBlackScreen);
      fill(textColor);
      text("Player: Nah , they just moved into the woods by the lake.", textXBlackScreen, textYBlackScreen);
      break;
    case 5: 
      textSize(textSizeBlackScreen);
      fill(textColor);
      text("Max: We’ll need a disguise to blend in. Do you have anything?", textXBlackScreen, textYBlackScreen);
      break;
    case 6: 
      textSize(textSizeBlackScreen);
      fill(textColor);
      text("Player: Probably I’ll just need to look around my room.?", textXBlackScreen, textYBlackScreen);
      break;
    case 7: 
      textSize(textSizeBlackScreen);
      fill(textColor);
      text(" You all go to your room and try to put together a disguise. Youre \n not into the hippie style at all, so this is gonna be a challenge. \n What do those people wear, anyway? ", textXBlackScreen, textYBlackScreen);
      break;
    case 8: 
      textSize(textSizeBlackScreen);
      fill(textColor);
      text("Player: Guys, do you think this floral shirt will work?", textXBlackScreen, textYBlackScreen);
      break;
    case 9: 
      textSize(textSizeBlackScreen);
      fill(textColor);
      text("Daisy: Yes! Oh, these sunglasses would look good on you.", textXBlackScreen, textYBlackScreen);
      break;
    case 10: 
      textSize(textSizeBlackScreen);
      fill(textColor);
      text(" It takes a while, but you manage to put together 3 convincing \n outfits. And now it’s time to party!", textXBlackScreen, textYBlackScreen);
      break;
    case 11: 
      textSize(textSizeBlackScreen);
      fill(textColor);
      text("Daisy: I wonder what type of music they’ll be playing?", textXBlackScreen, textYBlackScreen);
      break;
    case 12: 
      textSize(textSizeBlackScreen);
      fill(textColor);
      text("Max: I hope they’ve got alcohol there or better stuff…", textXBlackScreen, textYBlackScreen);
      break;
    case 13: 
      fill(0);
      blackScreenHere = false;
      break;
    }
  }
  //locates object, isnt applied to final game
  void locateObject()
  {
    rect(870, 510, 100, 280);
  }
}
