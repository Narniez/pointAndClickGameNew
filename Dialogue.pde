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
  boolean blackScreenTransition = false;
  boolean backToScene = true;
  boolean talkingAboutWaterHippie3 = true;
  boolean allowingToTalkToHippie = false;
  boolean talkingToHippiesWater = false;
  boolean askedForWater = false;
  boolean askedForCorkscrew = false;
  boolean missionCorkscrew = false;
  boolean missionCorkscrewFinished = false;
  boolean talkHippie1 = false;
  boolean  talkHippie2 = false;
  boolean  talkHippie3 = false;
  boolean talkHippie4 = false;
  boolean talkHippie5 = false;
  boolean talkFriends = false;
  int textXTalkingHippie2Line= 200;
  int textYTalkingHippie2Line = 1000;
  int textSizeTalkingHippie2Line= 30;
  int textSizeTalkingHippie1Line= 35;

  int textXTalkingHippie1Line = 200;
  int textYTalkingHippie1Line = 1025;

  void hippieTalk()
  {
    if (blackScreenTransition)
    {
      background (0);
    }

    //text lines of hippie 2

    if (hasWineBottle || hasSeenWineBottle)
    { 
      missionCorkscrew = true;
    }

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
        askedForWater = true;
        perMouseClick3 = 0;
        talkHippie1 = false;
        break;
      }
    }

    if (talkHippie1 && missionCorkscrew && (hasWineBottle || hasSeenWineBottle) && askedForCorkscrew == false)
    {
      switch(perMouseClick3)
      {
      case 1:
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        textSize (textSizeTalkingHippie1Line);
        text("Yo, do you have anything I could open this bottle with?", textXTalkingHippie1Line, textYTalkingHippie1Line);
        image(john, 50, 950);
        break;
      case 2: 
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        textSize (textSizeTalkingHippie1Line);
        text("uhh, can't help, sorry.", textXTalkingHippie1Line, textYTalkingHippie1Line);
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
        askedForWater = true;
        perMouseClick3 = 0;
        talkHippie2 = false;
        break;
      }
    }

    if (talkHippie2 && missionCorkscrew && (hasWineBottle || hasSeenWineBottle) && askedForCorkscrew == false)
    {
      switch(perMouseClick3)
      {
      case 1:
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        textSize (textSizeTalkingHippie1Line);
        text("Yo, do you have anything I could open this bottle with?", textXTalkingHippie1Line, textYTalkingHippie1Line);
        image(john, 50, 950);
        break;
      case 2: 
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        textSize (textSizeTalkingHippie1Line);
        text("Nah man, sorry.", textXTalkingHippie1Line, textYTalkingHippie1Line);        
        image(hippie2, 50, 950);        
        break;
      case 3: 
        perMouseClick3 = 0;
        talkHippie2 = false;
        break;
      }
    }

    //textlines of hippie 3 watermission

    if (talkHippie3 && watermission && askedForWater == false)
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



    if (talkHippie3 && watermission && askedForWater && talkingAboutWaterHippie3)
    { 
      switch(perMouseClick3)
      {
      case 1:
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        textSize (textSizeTalkingHippie2Line);
        text("So, you know you’re in the drinking booth right? That means you’re surrounded by beverages. \n Including water.", textXTalkingHippie2Line, textYTalkingHippie2Line);
        image(john, 50, 950);
        break;
      case 2: 
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        textSize (textSizeTalkingHippie2Line);
        text(" Yoo, thanks man. You know what, you’re cool. Take whatever drink you want, it’s on me.", textXTalkingHippie1Line, textYTalkingHippie1Line);
        image(hippie4, 50, 915);
        canGoToBar = true;
        break;
      case 3: 
        watermission = false;
        talkingToHippiesWater = false;
        talkingAboutWaterHippie3 = false;
        perMouseClick3 = 0;
        talkingToHippiesWater = false;
        talkHippie3 = false;
        break;
      }
    }



    if (talkHippie3 && missionCorkscrew && (hasWineBottle || hasSeenWineBottle) && askedForCorkscrew == false)
    {
      switch(perMouseClick3)
      {
      case 1:
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        textSize (textSizeTalkingHippie1Line);
        text("Yo, do you have anything I could open this bottle with?", textXTalkingHippie1Line, textYTalkingHippie1Line);
        image(john, 50, 950);

        break;
      case 2: 
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        textSize (textSizeTalkingHippie1Line);
        text("Mmm nope. Try asking someone else.", textXTalkingHippie1Line, textYTalkingHippie1Line);        
        image(hippie4, 50, 950);        
        break;
      case 3: 
        perMouseClick3 = 0;
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
        askedForWater = true;
        perMouseClick3 = 0;
        talkHippie4 = false;
        break;
      }
    }
    if (talkHippie4 && missionCorkscrew && (hasWineBottle || hasSeenWineBottle) && askedForCorkscrew == false)
    {
      switch(perMouseClick3)
      {
      case 1:
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        textSize (textSizeTalkingHippie1Line);
        text("Yo, do you have anything I could open this bottle with?", textXTalkingHippie1Line, textYTalkingHippie1Line);
        image(john, 50, 950);
        break;
      case 2: 
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        textSize (textSizeTalkingHippie1Line);
        text("No, sorry, I only do drugs.", textXTalkingHippie1Line, textYTalkingHippie1Line);        
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
        askedForWater = true;
        perMouseClick3 = 0;
        talkHippie5 = false;
        break;
      }
    }
    if (talkHippie5 && missionCorkscrew && hasSeenWineBottle && hasWineBottle == false)
    {
      switch(perMouseClick3)
      {
      case 1:
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        textSize (textSizeTalkingHippie1Line);
        text("Yo, do you have anything I could open this bottle with?", textXTalkingHippie1Line, textYTalkingHippie1Line);
        image(john, 50, 950);
        break;
      case 2: 
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        textSize (textSizeTalkingHippie2Line);
        text("Yeah I have one, but I'm not giving it until I make sure that your using it for a bottle \n of wine.", textXTalkingHippie2Line, textYTalkingHippie2Line);        
        image(hippie5, 50, 950);        
        break;
      case 7: 
        askedForCorkscrew = true;   
        perMouseClick3 = 0;
        talkHippie5 = false;
        break;
      }
    }


    if (talkHippie5 && missionCorkscrew && hasWineBottle )
    {
      switch(perMouseClick3)
      {
      case 1:
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        textSize (textSizeTalkingHippie1Line);
        text("Yo, do you have anything I could open this bottle with?", textXTalkingHippie1Line, textYTalkingHippie1Line);
        image(john, 50, 950);
        break;
      case 2: 
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        textSize (textSizeTalkingHippie1Line);
        text("You came to the right guy! I have this corkscrew, but I’m not giving it away for free.", textXTalkingHippie1Line, textYTalkingHippie1Line);        
        image(hippie5, 50, 950);        
        break;
      case 3:
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        textSize (textSizeTalkingHippie1Line);
        text("Alright, what do you want?", textXTalkingHippie1Line, textYTalkingHippie1Line);
        image(john, 50, 950);
        break;
      case 4: 
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        textSize (textSizeTalkingHippie2Line);
        text("I noticed your friend, she’s very pretty. If you were to, say, promise to give her \n this special drink I made her, you could have the corkscrew. ", textXTalkingHippie2Line, textYTalkingHippie2Line);        
        image(hippie5, 50, 950); 
        break;
      case 5:
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        textSize (textSizeTalkingHippie1Line);
        text("You got it!", textXTalkingHippie1Line, textYTalkingHippie1Line);
        image(john, 50, 950);
        break;
      case 6: 
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        textSize (textSizeTalkingHippie1Line);
        text("Really? Thanks man, here you go. ", textXTalkingHippie1Line, textYTalkingHippie1Line);        
        image(hippie5, 50, 950); 
        break;
      case 7:
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        textSize (textSizeTalkingHippie1Line);
        text("*opens bottle of wine* ", textXTalkingHippie1Line, textYTalkingHippie1Line);
        image(john, 50, 950);
        break;
      case 8: 
        talkFriends = true;
        missionCorkscrewFinished = true;
        askedForCorkscrew = true;
        missionCorkscrew = false;
        perMouseClick3 = 0;
        talkHippie5 = false;
        allowingToTalkToHippie = false;
        break;
      }
    }

    //talking to friends
    if (talkFriends && missionCorkscrewFinished )
    {
      switch(perMouseClick3)
      {
      case 1:
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        textSize (textSizeTalkingHippie1Line);
        text("Haha! Beat you to it, guys!", textXTalkingHippie1Line, textYTalkingHippie1Line);
        image(john, 50, 950);
        break;
      case 2: 
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        textSize (textSizeTalkingHippie1Line);
        text("Wait, why do you have 2 drinks?", textXTalkingHippie1Line, textYTalkingHippie1Line);        
        image(daisy, 50, 950);        
        break;
      case 3:
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        textSize (textSizeTalkingHippie1Line);
        text("Well, actually, this one's for you. That guy over there made me give it to you.", textXTalkingHippie1Line, textYTalkingHippie1Line);
        image(john, 50, 950);
        break;
      case 4: 
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        textSize (textSizeTalkingHippie1Line);
        text("Uhhh no thanks, dude. I don’t like that kind of stuff. You can have it.", textXTalkingHippie1Line, textYTalkingHippie1Line);        
        image(daisy, 50, 950); 
        break;
      case 5: 
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        textSize (textSizeTalkingHippie1Line);
        text("Hell yeah, double drinks for me!", textXTalkingHippie1Line, textYTalkingHippie1Line);        
        image(john, 50, 950); 
        break;
      case 6: 
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        textSize (textSizeTalkingHippie1Line);
        text("Now that everyone has a drink you can all enjoy the party. *a few hours go by*", textXTalkingHippie1Line, textYTalkingHippie1Line);
        break;
      case 7: 
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        textSize (textSizeTalkingHippie1Line);
        text("It’s already midnight?", textXTalkingHippie1Line, textYTalkingHippie1Line);
        image(daisy, 50, 950); 
        break;
      case 8: 
        fill(0, 100);
        rect(0, 975, 1920, 100); 
        fill(textColor);
        textFont(mono);
        textSize (textSizeTalkingHippie1Line);
        text("Yeah, time flies when you’re having fun.", textXTalkingHippie1Line, textYTalkingHippie1Line);
        image(max, 50, 950); 
        break;
      case 9: 
        partyMusic.stop();
        blackScreenTransition = true;
        fill(textColor);
        textFont(mono);
        textSize (textSizeBlackScreen);
        text("As soon as your friend was done talking, things started to \n change around you..", textXBlackScreen, textYBlackScreen);
        break;
      case 10:
        fill(textColor);
        textFont(mono);
        textSize (textSizeBlackScreen);
        text("Uhh guys, what’s happening?", textXBlackScreen, textYBlackScreen); 
        break;
      case 11:
        blackScreenTransition = false;
        isMidnight = true;
        currentScene = 4;
        talkFriends = false;
        perMouseClick3 = 0;
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
    if (mouseX >= 200 && mouseX <= 300 + widthHippie && mouseY >= 580 && mouseY <= 670 + heigthHippie && currentScene == 0 && allowingToTalkToHippie == false)
    {
      perMouseClick3++;
      talkFriends = true;
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
