class Dialogue
{
  //variables for black begin screen, text and clicksystem
  int textSizeBlackScreen = 45;
  int textXBlackScreen = 175;
  int textYBlackScreen = 550; 
  int textColor = 255;
  int perMouseClick = 0;
  boolean blackScreenHere = true;

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


  //under here is the code for interacting with an object and showing text
  //if interacted with object
  void mouseClickInteractions()
  {
    //if you go to the second scene
    /*if ((mouseX >= arrowToSecondSceneX && mouseX <= arrowToSecondSceneX + 50) && (mouseY >= arrowToSecondSceneY && mouseY <= arrowToSecondSceneY + 50))
     {
     mainSceneInteract = false;
     arrowToSecondScene = true;
     }
     //if you go back to the mainscene 
     if ((mouseX >= arrowToFirstSceneX && mouseX <= arrowToFirstSceneX + 50) && (mouseY >= arrowToFirstSceneY && mouseY <= arrowToFirstSceneY + 50))
     {
     mainSceneInteract = true;
     }
     */
    if ((mouseX >= wineBottleX && mouseX <= wineBottleX +65) && (mouseY >= wineBottleY && mouseY <= wineBottleY + 125)) //wineObject 
    {
      goOverWineBottle = true;
      interactionObject = true;
      startTime = seconds;
    }
    //if the joint has been picked up
    if ((mouseX >= jointX && mouseX <= jointX +120) && (mouseY >= jointY && mouseY <= jointY + 100)) //jointObject
    {
      goOverJoint = true;
      interactionObject = true;
      startTime = seconds;
    }
  }

  //showing text an amount of time
  void timer()
  {
    println (startTime);
    //converting millis into seconds
    millis = millis();
    seconds = millis/1000;

    //if there is an interaction with an object, timer goes

    if (interactionObject)
    {
      if (seconds >= startTime && seconds <= startTime + timerdelay)
      {



        //if you are in the main scene, this is gonna run
        if (mainSceneInteract == true)
        {
          fill(0, 100);
          rect(0, 1000, 1920, 50); //black text bar
          fill(255);
          
           if(goOverWineBottle == true)
          {
          if (foundWineBottle == true)
          {
            text("John (You): I can't find anyting besides the joint here", textObjectX, textObjectY);
          } else if (foundJoint == false)
          {
            text("John (You): text when finding joint", textObjectX, textObjectY);
          }
          }
          
          if(goOverJoint == true)
          {
          if (foundJoint == true)
          {
            text("John (You): I can't find anyting besides the joint here", textObjectX, textObjectY);
          } else if (foundJoint == false)
          {
            text("John (You): text when finding joint", textObjectX, textObjectY);
          }
          }
        }
      }
      if (seconds > startTime + timerdelay)
      {
        interactionObject = false;
        foundJoint = true;
        goOverJoint = false;
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
  }

  // looks what number variable is at and displays that case, dialogue in beginning (black screen)
  void drawDialogue()
  {
    switch (perMouseClick) {
    case 1: 
      //textSize(textSizeBlackScreen);
      fill(textColor);
      textFont(mono);
      String s = "It’s a nice Friday afternoon and school is finally over for the week. You and your best friends are walking home and making plans for the evening when, suddenly, one of your friends notices something...";
      text(s,textXBlackScreen, textYBlackScreen,1600,800);
      break;
    case 2: 
      textSize(textSizeBlackScreen);
      fill(textColor);
      String s1 = "Max: Yo guys look at this poster, the hippies are throwing a party tonight.";
      text(s1,textXBlackScreen, textYBlackScreen,1600,800);
      break;
    case 3: 
      textSize(textSizeBlackScreen);
      fill(textColor);
      String s2 = "Daisy: No way are they still here, I thought they left?";
      text(s2,textXBlackScreen, textYBlackScreen,1600,800);
      break;
    case 4: 
      textSize(textSizeBlackScreen);
      fill(textColor);
      text("", textXBlackScreen, textYBlackScreen );
      String s3 = "Player: Nah , they just moved into the woods by the lake.";
      text(s3,textXBlackScreen, textYBlackScreen,1600,800);
      break;
    case 5: 
      textSize(textSizeBlackScreen);
      fill(textColor);
      String s4 = "Max: We’ll need a disguise to blend in. Do you have anything?";
      text(s4,textXBlackScreen, textYBlackScreen,1600,800);
      break;
    case 6: 
      textSize(textSizeBlackScreen);
      fill(textColor);
      String s5 = "Player: Probably I’ll just need to look around my room.?";
      text(s5,textXBlackScreen, textYBlackScreen,1600,800);
      break;
    case 7: 
      textSize(textSizeBlackScreen);
      fill(textColor);
      String s6 = "You all go to your room and try to put together a disguise. Youre not into the hippie style at all, so this is gonna be a challenge. What do those people wear, anyway? ";
      text(s6,textXBlackScreen, textYBlackScreen,1600,800);
      break;
    case 8: 
      textSize(textSizeBlackScreen);
      fill(textColor);
      String s7 = "Player: Guys, do you think this floral shirt will work?";
      text(s7,textXBlackScreen, textYBlackScreen,1600,800);
      break;
     case 9: 
      textSize(textSizeBlackScreen);
      fill(textColor);
      String s8 = "Daisy:Yes! Oh, these sunglasses would look good on you.";
      text(s8,textXBlackScreen, textYBlackScreen,1600,800);
      break;
      case 10: 
      textSize(textSizeBlackScreen);
      fill(textColor);
      String s9 = "It takes a while, but you manage to put together 3 convincing outfits. And now it’s time to party!";
      text(s9,textXBlackScreen, 400,1600,800);
      break;
      case 11: 
      textSize(textSizeBlackScreen);
      fill(textColor);
      String s10 = "Daisy: I wonder what type of music they’ll be playing?";
      text(s10,textXBlackScreen, textYBlackScreen,1600,800);
      break;
      case 12: 
      textSize(textSizeBlackScreen);
      fill(textColor);
      String s11 = "Max: I hope they’ve got alcohol there or better stuff…";
      text(s11,textXBlackScreen, textYBlackScreen,1600,800);
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
   rect(975, 300, 65, 125);
   }
   
}
